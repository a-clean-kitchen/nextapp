# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@next/env-13.1.2" = {
      name = "_at_next_slash_env";
      packageName = "@next/env";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/env/-/env-13.1.2.tgz";
        sha512 = "PpT4UZIX66VMTqXt4HKEJ+/PwbS+tWmmhZlazaws1a+dbUA5pPdjntQ46Jvj616i3ZKN9doS9LHx3y50RLjAWg==";
      };
    };
    "@next/font-13.1.2" = {
      name = "_at_next_slash_font";
      packageName = "@next/font";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/font/-/font-13.1.2.tgz";
        sha512 = "NXGXGFGiOKEnvBIHq9cdFTKbHO2/4B3Zd9K27M7j1DioIQVar7oVRqZMYs0h3XMVEZLwjjkdAtqRPCzzd3RtXg==";
      };
    };
    "@next/swc-android-arm-eabi-13.1.2" = {
      name = "_at_next_slash_swc-android-arm-eabi";
      packageName = "@next/swc-android-arm-eabi";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-android-arm-eabi/-/swc-android-arm-eabi-13.1.2.tgz";
        sha512 = "7mRz1owoGsbfIcdOJA3kk7KEwPZ+OvVT1z9DkR/yru4QdVLF69h/1SHy0vlUNQMxDRllabhxCfkoZCB34GOGAg==";
      };
    };
    "@next/swc-android-arm64-13.1.2" = {
      name = "_at_next_slash_swc-android-arm64";
      packageName = "@next/swc-android-arm64";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-android-arm64/-/swc-android-arm64-13.1.2.tgz";
        sha512 = "mgjZ2eJSayovQm1LcE54BLSI4jjnnnLtq5GY5g+DdPuUiCT644gKtjZ/w2BQvuIecCqqBO+Ph9yzo/wUTq7NLg==";
      };
    };
    "@next/swc-darwin-arm64-13.1.2" = {
      name = "_at_next_slash_swc-darwin-arm64";
      packageName = "@next/swc-darwin-arm64";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-darwin-arm64/-/swc-darwin-arm64-13.1.2.tgz";
        sha512 = "RikoQqy109r2222UJlyGs4dZw2BibkfPqpeFdW5JEGv+L2PStlHID8DwyVYbmHfQ0VIBGvbf/NAUtFakAWlhwg==";
      };
    };
    "@next/swc-darwin-x64-13.1.2" = {
      name = "_at_next_slash_swc-darwin-x64";
      packageName = "@next/swc-darwin-x64";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-darwin-x64/-/swc-darwin-x64-13.1.2.tgz";
        sha512 = "JbDZjaTvL8gyPC5TAH6OnD4jmXPkyUxRYPvu08ZmhT/XAFBb/Cso0BdXyDax/BPCG70mimP9d3hXNKNq+A0VtQ==";
      };
    };
    "@next/swc-freebsd-x64-13.1.2" = {
      name = "_at_next_slash_swc-freebsd-x64";
      packageName = "@next/swc-freebsd-x64";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-freebsd-x64/-/swc-freebsd-x64-13.1.2.tgz";
        sha512 = "ax4j8VrdFQ/xc3W7Om0u1vnDxVApQHKsChBbAMynCrnycZmpbqK4MZu4ZkycT+mx2eccCiqZROpbzDbEdPosEw==";
      };
    };
    "@next/swc-linux-arm-gnueabihf-13.1.2" = {
      name = "_at_next_slash_swc-linux-arm-gnueabihf";
      packageName = "@next/swc-linux-arm-gnueabihf";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-linux-arm-gnueabihf/-/swc-linux-arm-gnueabihf-13.1.2.tgz";
        sha512 = "NcRHTesnCxnUvSJa637PQJffBBkmqi5XS/xVWGY7dI6nyJ+pC96Oj7kd+mcjnFUQI5lHKbg39qBWKtOzbezc4w==";
      };
    };
    "@next/swc-linux-arm64-gnu-13.1.2" = {
      name = "_at_next_slash_swc-linux-arm64-gnu";
      packageName = "@next/swc-linux-arm64-gnu";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-linux-arm64-gnu/-/swc-linux-arm64-gnu-13.1.2.tgz";
        sha512 = "AxJdjocLtPrsBY4P2COSBIc3crT5bpjgGenNuINoensOlXhBkYM0aRDYZdydwXOhG+kN2ngUvfgitop9pa204w==";
      };
    };
    "@next/swc-linux-arm64-musl-13.1.2" = {
      name = "_at_next_slash_swc-linux-arm64-musl";
      packageName = "@next/swc-linux-arm64-musl";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-linux-arm64-musl/-/swc-linux-arm64-musl-13.1.2.tgz";
        sha512 = "JmNimDkcCRq7P5zpkdqeaSZ69qKDntEPtyIaMNWqy5M0WUJxGim0Fs6Qzxayiyvuuh9Guxks4woQ/j/ZvX/c8Q==";
      };
    };
    "@next/swc-linux-x64-gnu-13.1.2" = {
      name = "_at_next_slash_swc-linux-x64-gnu";
      packageName = "@next/swc-linux-x64-gnu";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-linux-x64-gnu/-/swc-linux-x64-gnu-13.1.2.tgz";
        sha512 = "TsLsjZwUlgmvI42neTuIoD6K9RlXCUzqPtvIClgXxVO0um0DiZwK+M+0zX/uVXhMVphfPY2c5YeR1zFSIONY4A==";
      };
    };
    "@next/swc-linux-x64-musl-13.1.2" = {
      name = "_at_next_slash_swc-linux-x64-musl";
      packageName = "@next/swc-linux-x64-musl";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-linux-x64-musl/-/swc-linux-x64-musl-13.1.2.tgz";
        sha512 = "eSkyXgCXydEFPTkcncQOGepafedPte6JT/OofB9uvruucrrMVBagCASOuPxodWEMrlfEKSXVnExMKIlfmQMD7A==";
      };
    };
    "@next/swc-win32-arm64-msvc-13.1.2" = {
      name = "_at_next_slash_swc-win32-arm64-msvc";
      packageName = "@next/swc-win32-arm64-msvc";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-win32-arm64-msvc/-/swc-win32-arm64-msvc-13.1.2.tgz";
        sha512 = "DmXFaRTgt2KrV9dmRLifDJE+cYiutHVFIw5/C9BtnwXH39uf3YbPxeD98vNrtqqqZVVLXY/1ySaSIwzYnqeY9g==";
      };
    };
    "@next/swc-win32-ia32-msvc-13.1.2" = {
      name = "_at_next_slash_swc-win32-ia32-msvc";
      packageName = "@next/swc-win32-ia32-msvc";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-win32-ia32-msvc/-/swc-win32-ia32-msvc-13.1.2.tgz";
        sha512 = "3+nBkuFs/wT+lmRVQNH5SyDT7I4vUlNPntosEaEP63FuYQdPLaxz0GvcR66MdFSFh2fsvazpe4wciOwVS4FItQ==";
      };
    };
    "@next/swc-win32-x64-msvc-13.1.2" = {
      name = "_at_next_slash_swc-win32-x64-msvc";
      packageName = "@next/swc-win32-x64-msvc";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@next/swc-win32-x64-msvc/-/swc-win32-x64-msvc-13.1.2.tgz";
        sha512 = "avsyveEvcvH42PvKjR4Pb8JlLttuGURr2H3ZhS2b85pHOiZ7yjH3rMUoGnNzuLMApyxYaCvd4MedPrLhnNhkog==";
      };
    };
    "@swc/helpers-0.4.14" = {
      name = "_at_swc_slash_helpers";
      packageName = "@swc/helpers";
      version = "0.4.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/@swc/helpers/-/helpers-0.4.14.tgz";
        sha512 = "4C7nX/dvpzB7za4Ql9K81xK3HPxCpHMgwTZVyf+9JQ6VUbn9jjZVN7/Nkdz/Ugzs2CSjqnL/UPXroiVBVHUWUw==";
      };
    };
    "@types/node-18.11.18" = {
      name = "_at_types_slash_node";
      packageName = "@types/node";
      version = "18.11.18";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/node/-/node-18.11.18.tgz";
        sha512 = "DHQpWGjyQKSHj3ebjFI/wRKcqQcdR+MoFBygntYOZytCqNfkd2ZC4ARDJ2DQqhjH5p85Nnd3jhUJIXrszFX/JA==";
      };
    };
    "@types/prop-types-15.7.5" = {
      name = "_at_types_slash_prop-types";
      packageName = "@types/prop-types";
      version = "15.7.5";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/prop-types/-/prop-types-15.7.5.tgz";
        sha512 = "JCB8C6SnDoQf0cNycqd/35A7MjcnK+ZTqE7judS6o7utxUCg6imJg3QK2qzHKszlTjcj2cn+NwMB2i96ubpj7w==";
      };
    };
    "@types/react-18.0.26" = {
      name = "_at_types_slash_react";
      packageName = "@types/react";
      version = "18.0.26";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/react/-/react-18.0.26.tgz";
        sha512 = "hCR3PJQsAIXyxhTNSiDFY//LhnMZWpNNr5etoCqx/iUfGc5gXWtQR2Phl908jVR6uPXacojQWTg4qRpkxTuGug==";
      };
    };
    "@types/react-dom-18.0.10" = {
      name = "_at_types_slash_react-dom";
      packageName = "@types/react-dom";
      version = "18.0.10";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/react-dom/-/react-dom-18.0.10.tgz";
        sha512 = "E42GW/JA4Qv15wQdqJq8DL4JhNpB3prJgjgapN3qJT9K2zO5IIAQh4VXvCEDupoqAwnz0cY4RlXeC/ajX5SFHg==";
      };
    };
    "@types/scheduler-0.16.2" = {
      name = "_at_types_slash_scheduler";
      packageName = "@types/scheduler";
      version = "0.16.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/@types/scheduler/-/scheduler-0.16.2.tgz";
        sha512 = "hppQEBDmlwhFAXKJX2KnWLYu5yMfi91yazPb2l+lbJiwW+wdo1gNeRA+3RgNSO39WYX2euey41KEwnqesU2Jew==";
      };
    };
    "caniuse-lite-1.0.30001445" = {
      name = "caniuse-lite";
      packageName = "caniuse-lite";
      version = "1.0.30001445";
      src = fetchurl {
        url = "https://registry.npmjs.org/caniuse-lite/-/caniuse-lite-1.0.30001445.tgz";
        sha512 = "8sdQIdMztYmzfTMO6KfLny878Ln9c2M0fc7EH60IjlP4Dc4PiCy7K2Vl3ITmWgOyPgVQKa5x+UP/KqFsxj4mBg==";
      };
    };
    "client-only-0.0.1" = {
      name = "client-only";
      packageName = "client-only";
      version = "0.0.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/client-only/-/client-only-0.0.1.tgz";
        sha512 = "IV3Ou0jSMzZrd3pZ48nLkT9DA7Ag1pnPzaiQhpW7c3RbcqqzvzzVu+L8gfqMp/8IM2MQtSiqaCxrrcfu8I8rMA==";
      };
    };
    "csstype-3.1.1" = {
      name = "csstype";
      packageName = "csstype";
      version = "3.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/csstype/-/csstype-3.1.1.tgz";
        sha512 = "DJR/VvkAvSZW9bTouZue2sSxDwdTN92uHjqeKVm+0dAqdfNykRzQ95tay8aXMBAAPpUiq4Qcug2L7neoRh2Egw==";
      };
    };
    "js-tokens-4.0.0" = {
      name = "js-tokens";
      packageName = "js-tokens";
      version = "4.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/js-tokens/-/js-tokens-4.0.0.tgz";
        sha512 = "RdJUflcE3cUzKiMqQgsCu06FPu9UdIJO0beYbPhHN4k6apgJtifcoCtT9bcxOpYBtpD2kCM6Sbzg4CausW/PKQ==";
      };
    };
    "loose-envify-1.4.0" = {
      name = "loose-envify";
      packageName = "loose-envify";
      version = "1.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz";
        sha512 = "lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==";
      };
    };
    "nanoid-3.3.4" = {
      name = "nanoid";
      packageName = "nanoid";
      version = "3.3.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/nanoid/-/nanoid-3.3.4.tgz";
        sha512 = "MqBkQh/OHTS2egovRtLk45wEyNXwF+cokD+1YPf9u5VfJiRdAiRwB2froX5Co9Rh20xs4siNPm8naNotSD6RBw==";
      };
    };
    "next-13.1.2" = {
      name = "next";
      packageName = "next";
      version = "13.1.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/next/-/next-13.1.2.tgz";
        sha512 = "Rdnnb2YH///w78FEOR/IQ6TXga+qpth4OqFSem48ng1PYYKr6XBsIk1XVaRcIGM3o6iiHnun0nJvkJHDf+ICyQ==";
      };
    };
    "picocolors-1.0.0" = {
      name = "picocolors";
      packageName = "picocolors";
      version = "1.0.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/picocolors/-/picocolors-1.0.0.tgz";
        sha512 = "1fygroTLlHu66zi26VoTDv8yRgm0Fccecssto+MhsZ0D/DGW2sm8E8AjW7NU5VVTRt5GxbeZ5qBuJr+HyLYkjQ==";
      };
    };
    "postcss-8.4.14" = {
      name = "postcss";
      packageName = "postcss";
      version = "8.4.14";
      src = fetchurl {
        url = "https://registry.npmjs.org/postcss/-/postcss-8.4.14.tgz";
        sha512 = "E398TUmfAYFPBSdzgeieK2Y1+1cpdxJx8yXbK/m57nRhKSmk1GB2tO4lbLBtlkfPQTDKfe4Xqv1ASWPpayPEig==";
      };
    };
    "react-18.2.0" = {
      name = "react";
      packageName = "react";
      version = "18.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/react/-/react-18.2.0.tgz";
        sha512 = "/3IjMdb2L9QbBdWiW5e3P2/npwMBaU9mHCSCUzNln0ZCYbcfTsGbTJrU/kGemdH2IWmB2ioZ+zkxtmq6g09fGQ==";
      };
    };
    "react-dom-18.2.0" = {
      name = "react-dom";
      packageName = "react-dom";
      version = "18.2.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/react-dom/-/react-dom-18.2.0.tgz";
        sha512 = "6IMTriUmvsjHUjNtEDudZfuDQUoWXVxKHhlEGSk81n4YFS+r/Kl99wXiwlVXtPBtJenozv2P+hxDsw9eA7Xo6g==";
      };
    };
    "scheduler-0.23.0" = {
      name = "scheduler";
      packageName = "scheduler";
      version = "0.23.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/scheduler/-/scheduler-0.23.0.tgz";
        sha512 = "CtuThmgHNg7zIZWAXi3AsyIzA3n4xx7aNyjwC2VJldO2LMVDhFK+63xGqq6CsJH4rTAt6/M+N4GhZiDYPx9eUw==";
      };
    };
    "source-map-js-1.0.2" = {
      name = "source-map-js";
      packageName = "source-map-js";
      version = "1.0.2";
      src = fetchurl {
        url = "https://registry.npmjs.org/source-map-js/-/source-map-js-1.0.2.tgz";
        sha512 = "R0XvVJ9WusLiqTCEiGCmICCMplcCkIwwR11mOSD9CR5u+IXYdiseeEuXCVAjS54zqwkLcPNnmU4OeJ6tUrWhDw==";
      };
    };
    "styled-jsx-5.1.1" = {
      name = "styled-jsx";
      packageName = "styled-jsx";
      version = "5.1.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/styled-jsx/-/styled-jsx-5.1.1.tgz";
        sha512 = "pW7uC1l4mBZ8ugbiZrcIsiIvVx1UmTfw7UkC3Um2tmfUq9Bhk8IiyEIPl6F8agHgjzku6j0xQEZbfA5uSgSaCw==";
      };
    };
    "tslib-2.4.1" = {
      name = "tslib";
      packageName = "tslib";
      version = "2.4.1";
      src = fetchurl {
        url = "https://registry.npmjs.org/tslib/-/tslib-2.4.1.tgz";
        sha512 = "tGyy4dAjRIEwI7BzsB0lynWgOpfqjUdq91XXAlIWD2OwKBH7oCl/GZG/HT4BOHrTlPMOASlMQ7veyTqpmRcrNA==";
      };
    };
    "typescript-4.9.4" = {
      name = "typescript";
      packageName = "typescript";
      version = "4.9.4";
      src = fetchurl {
        url = "https://registry.npmjs.org/typescript/-/typescript-4.9.4.tgz";
        sha512 = "Uz+dTXYzxXXbsFpM86Wh3dKCxrQqUcVMxwU54orwlJjOpO3ao8L7j5lH+dWfTwgCwIuM9GQ2kvVotzYJMXTBZg==";
      };
    };
  };
  args = {
    name = "nextapp";
    packageName = "nextapp";
    version = "0.1.0";
    src = ./.;
    dependencies = [
      sources."@next/env-13.1.2"
      sources."@next/font-13.1.2"
      sources."@next/swc-android-arm-eabi-13.1.2"
      sources."@next/swc-android-arm64-13.1.2"
      sources."@next/swc-darwin-arm64-13.1.2"
      sources."@next/swc-darwin-x64-13.1.2"
      sources."@next/swc-freebsd-x64-13.1.2"
      sources."@next/swc-linux-arm-gnueabihf-13.1.2"
      sources."@next/swc-linux-arm64-gnu-13.1.2"
      sources."@next/swc-linux-arm64-musl-13.1.2"
      sources."@next/swc-linux-x64-gnu-13.1.2"
      sources."@next/swc-linux-x64-musl-13.1.2"
      sources."@next/swc-win32-arm64-msvc-13.1.2"
      sources."@next/swc-win32-ia32-msvc-13.1.2"
      sources."@next/swc-win32-x64-msvc-13.1.2"
      sources."@swc/helpers-0.4.14"
      sources."@types/node-18.11.18"
      sources."@types/prop-types-15.7.5"
      sources."@types/react-18.0.26"
      sources."@types/react-dom-18.0.10"
      sources."@types/scheduler-0.16.2"
      sources."caniuse-lite-1.0.30001445"
      sources."client-only-0.0.1"
      sources."csstype-3.1.1"
      sources."js-tokens-4.0.0"
      sources."loose-envify-1.4.0"
      sources."nanoid-3.3.4"
      sources."next-13.1.2"
      sources."picocolors-1.0.0"
      sources."postcss-8.4.14"
      sources."react-18.2.0"
      sources."react-dom-18.2.0"
      sources."scheduler-0.23.0"
      sources."source-map-js-1.0.2"
      sources."styled-jsx-5.1.1"
      sources."tslib-2.4.1"
      sources."typescript-4.9.4"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = true;
    bypassCache = true;
    reconstructLock = false;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}