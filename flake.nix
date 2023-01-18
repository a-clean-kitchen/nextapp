{
  inputs.nixpkgs.url = "nixpkgs/nixos-21.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  description =
    "Nextapp is a tutorial app to learn a neat stack.";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        nextapp_overlay = (final: prev: { inherit nextapp; });
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ nextapp_overlay ];
        };
        inherit (pkgs)
          stdenv callPackage nodejs-18_x nodePackages writeShellScriptBin
          dockerTools;

        nodejs = nodejs-18_x;

        ## Import & invoke the generated files from node2nix
        #
        #    To update generated files after a dep. change / update:
        #      Re-generate package-lock.json after updates using 'npm i'.
        #      Then run node2nix again either manually, as detailed in
        #      writeShellScriptBin below, or use the devShell which includes it.
        generated = callPackage ./nix { inherit nodejs; };

        name = "nextapp";

        nextapp = {
          ## Build recipe for the static assets manually instead of calling
          #   the generated.package (which uses buildNodePackage internally
          #   and expects to install binaries..etc)
          static = stdenv.mkDerivation {
            inherit name;
            src = ./.;
            buildInputs = [ nodejs ];
            buildPhase = ''
              ln -s ${generated.nodeDependencies}/lib/node_modules ./node_modules
              export PATH="${generated.nodeDependencies}/bin:$PATH"
              npm run build
            '';
            installPhase = ''
              cp -r build $out/
            '';
          };

          ## Tarball for releases
          tarball = generated.tarball.override { buildInputs = [ nodejs ]; };

          ## Docker image
          #    nix build '.#image'
          #    The resulting image can be loaded directly:
          #      docker load < result
          #    And executed:
          #      docker run -d --rm -p 5000:5000 nextapp
          image = dockerTools.buildLayeredImage {
            inherit name;
            tag = "latest";
            # The closure of config is automatically included in the closure of
            # the final image, so no need to explicitly set contents property.
            config = {
              Cmd = [
                "${generated.nodeDependencies}/bin/sirv" "${nextapp.static}"
                "--no-clear"
                "--host" "0.0.0.0"
              ];
              ExposedPorts = { "5000/tcp" = { }; };
            };
          };

          # Launch development server
          dev = writeShellScriptBin "dev" ''
            rm -rf ./node_modules
            ln -s ${generated.nodeDependencies}/lib/node_modules ./node_modules
            export PATH="${generated.nodeDependencies}/bin:$PATH"
            nix develop --command npm start
          '';
        };

        # node2nix wrapper to update nix files on npm changes
        node2nix = writeShellScriptBin "node2nix" ''
          ${nodePackages.node2nix}/bin/node2nix \
            --development \
            -l package-lock.json \
            -c ./nix/default.nix \
            -o ./nix/node-packages.nix \
            -e ./nix/node-env.nix
        '';
      in rec {
        overlays = pkgs.overlays;
        packages = {
          static = pkgs.nextapp.static;
          image = pkgs.nextapp.image;
          tarball = pkgs.nextapp.tarball;
        };
        # 'nix build' to build default package
        defaultPackage = packages.static;

        # 'nix run' to symlink node_modules & launch development server:
	      apps.nextapp = flake-utils.lib.mkApp { drv = pkgs.nextapp.dev; };
        defaultApp = apps.nextapp;

        # Development shell with node2nix wrapper script
        # TODO add javascript + typescript language server
        # Runs when 'nix develop' is called:
        # 'nix develop' to start dev env without symlinking or running anything:
        devShell = generated.shell.override { buildInputs = [ node2nix nodejs ]; };
      });
}
