# flake.nix
#
# This file packages pythoneda-shared-pythonlang-artf/domain as a Nix flake.
#
# Copyright (C) 2024-today rydnr's pythoneda-shared-pythonlang-artf-def/domain
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
{
  description = "Nix flake for pythoneda-shared-pythonlang-artf/domain";
  inputs = rec {
    flake-utils.url = "github:numtide/flake-utils/v1.0.0";
    nixpkgs.url = "github:NixOS/nixpkgs/24.05";
    pythoneda-external-artf-flakeutils = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-external-artf-def/flakeutils/0.0.37";
    };
    pythoneda-external-artf-nixpkgs = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-external-artf-def/nixpkgs/0.0.35";
    };
    pythoneda-shared-artifact-artifact-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/artifact-events/0.0.88";
    };
    pythoneda-shared-artifact-artifact-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/artifact-shared/0.0.94";
    };
    pythoneda-shared-artifact-events = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/events/0.0.95";
    };
    pythoneda-shared-artifact-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-artifact-def/shared/0.0.105";
    };
    pythoneda-shared-git-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-git-def/shared/0.0.95";
    };
    pythoneda-shared-nix-flake-shared = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-git-shared.follows =
        "pythoneda-shared-git-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-nix-flake-def/shared/0.0.102";
    };
    pythoneda-shared-pythonlang-artf-banner = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-external-artf-flakeutils.follows =
        "pythoneda-external-artf-flakeutils";
      inputs.pythoneda-external-artf-nixpkgs.follows =
        "pythoneda-external-artf-nixpkgs";
      inputs.pythoneda-shared-nix-flake-shared.follows =
        "pythoneda-shared-nix-flake-shared";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      inputs.pythoneda-shared-pythonlang-domain.follows =
        "pythoneda-shared-pythonlang-domain";
      url = "github:pythoneda-shared-pythonlang-artf-def/banner/0.0.28";
    };
    pythoneda-shared-pythonlang-banner = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:pythoneda-shared-pythonlang-def/banner/0.0.83";
    };
    pythoneda-shared-pythonlang-domain = {
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.pythoneda-shared-pythonlang-banner.follows =
        "pythoneda-shared-pythonlang-banner";
      url = "github:pythoneda-shared-pythonlang-def/domain/0.0.126";
    };
  };
  outputs = inputs:
    with inputs;
    flake-utils.lib.eachDefaultSystem (system:
      let
        org = "pythoneda-shared-pythonlang-artf";
        repo = "domain";
        version = "0.0.26";
        sha256 = "1539bpm3q6nihn0mfdpzdi4k1wjig2m8hffasgjyp3w59lsk0xva";
        pname = "${org}-${repo}";
        pythonpackage = "pythoneda.artifact.shared";
        package = builtins.replaceStrings [ "." ] [ "/" ] pythonpackage;
        pkgs = import nixpkgs { inherit system; };
        description = "Artifact scope of pythoneda-shared-pythonlang/domain";
        license = pkgs.lib.licenses.gpl3;
        homepage = "https://github.com/${org}/${repo}";
        maintainers = with pkgs.lib.maintainers;
          [ "rydnr <github@acm-sl.org>" ];
        archRole = "B";
        space = "A";
        layer = "D";
        nixpkgsVersion = builtins.readFile "${nixpkgs}/.version";
        nixpkgsRelease =
          builtins.replaceStrings [ "\n" ] [ "" ] "nixpkgs-${nixpkgsVersion}";
        shared = import "${pythoneda-shared-pythonlang-banner}/nix/shared.nix";
        pythoneda-shared-pythonlang-artf-domain-for = { python
          , pythoneda-external-artf-flakeutils, pythoneda-external-artf-nixpkgs
          , pythoneda-shared-artifact-events
          , pythoneda-shared-artifact-artifact-events
          , pythoneda-shared-artifact-artifact-shared
          , pythoneda-shared-artifact-shared, pythoneda-shared-git-shared
          , pythoneda-shared-nix-flake-shared
          , pythoneda-shared-pythonlang-artf-banner
          , pythoneda-shared-pythonlang-domain }:
          let
            pnameWithUnderscores =
              builtins.replaceStrings [ "-" ] [ "_" ] pname;
            pythonVersionParts = builtins.splitVersion python.version;
            pythonMajorVersion = builtins.head pythonVersionParts;
            pythonMajorMinorVersion =
              "${pythonMajorVersion}.${builtins.elemAt pythonVersionParts 1}";
            wheelName =
              "${pnameWithUnderscores}-${version}-py${pythonMajorVersion}-none-any.whl";
          in python.pkgs.buildPythonPackage rec {
            inherit pname version;
            projectDir = ./.;
            pyprojectTomlTemplate = ./templates/pyproject.toml.template;
            pyprojectToml = pkgs.substituteAll {
              authors = builtins.concatStringsSep ","
                (map (item: ''"${item}"'') maintainers);
              desc = description;
              inherit homepage pname pythonMajorMinorVersion package
                version;
              pythonedaExternalArtfFlakeutils =
                pythoneda-external-artf-flakeutils.version;
              pythonedaExternalArtfNixpkgs =
                pythoneda-external-artf-nixpkgs.version;
              pythonedaSharedArtifactArtifactEvents =
                pythoneda-shared-artifact-artifact-events.version;
              pythonedaSharedArtifactArtifactShared =
                pythoneda-shared-artifact-artifact-shared.version;
              pythonedaSharedArtifactEvents =
                pythoneda-shared-artifact-events.version;
              pythonedaSharedArtifactShared =
                pythoneda-shared-artifact-shared.version;
              pythonedaSharedGitShared = pythoneda-shared-git-shared.version;
              pythonedaSharedNixFlakeShared =
                pythoneda-shared-nix-flake-shared.version;
              pythonedaSharedPythonlangArtfBanner =
                pythoneda-shared-pythonlang-artf-banner.version;
              pythonedaSharedPythonlangDomain =
                pythoneda-shared-pythonlang-domain.version;
              src = pyprojectTomlTemplate;
            };
            src = pkgs.fetchFromGitHub {
              owner = org;
              rev = version;
              inherit repo sha256;
            };

            format = "pyproject";

            nativeBuildInputs = with python.pkgs; [ pip poetry-core ];
            propagatedBuildInputs = with python.pkgs; [
              pythoneda-external-artf-flakeutils
              pythoneda-external-artf-nixpkgs
              pythoneda-shared-artifact-artifact-events
              pythoneda-shared-artifact-artifact-shared
              pythoneda-shared-artifact-events
              pythoneda-shared-artifact-shared
              pythoneda-shared-git-shared
              pythoneda-shared-nix-flake-shared
              pythoneda-shared-pythonlang-artf-banner
              pythoneda-shared-pythonlang-domain
            ];

            # pythonImportsCheck = [ pythonpackage ];

            unpackPhase = ''
              command cp -r ${src}/* .
              command chmod -R +w .
              command cp ${pyprojectToml} ./pyproject.toml
            '';

            postInstall = with python.pkgs; ''
              for f in $(command find . -name '__init__.py'); do
                command mkdir -p $out/lib/python${pythonMajorMinorVersion}/site-packages/domain/scripts
                if [[ ! -e $out/lib/python${pythonMajorMinorVersion}/site-packages/$f ]]; then
                  command cp $f $out/lib/python${pythonMajorMinorVersion}/site-packages/$f
                fi
              done
              command mkdir -p $out/dist $out/deps/flakes
              command cp dist/${wheelName} $out/dist
              for dep in ${pythoneda-external-artf-flakeutils} ${pythoneda-external-artf-nixpkgs} ${pythoneda-shared-artifact-artifact-events} ${pythoneda-shared-artifact-artifact-shared} ${pythoneda-shared-artifact-events} ${pythoneda-shared-artifact-shared} ${pythoneda-shared-git-shared} ${pythoneda-shared-nix-flake-shared} ${pythoneda-shared-pythonlang-artf-banner} ${pythoneda-shared-pythonlang-domain}; do
                command cp -r $dep/dist/* $out/deps || true
                if [ -e $dep/deps ]; then
                  command cp -r $dep/deps/* $out/deps || true
                fi
                METADATA=$dep/lib/python${pythonMajorMinorVersion}/site-packages/*.dist-info/METADATA
                NAME="$(command grep -m 1 '^Name: ' $METADATA | command cut -d ' ' -f 2)"
                VERSION="$(command grep -m 1 '^Version: ' $METADATA | command cut -d ' ' -f 2)"
                command ln -s $dep $out/deps/flakes/$NAME-$VERSION || true
              done
            '';

            meta = with pkgs.lib; {
              inherit description homepage license maintainers;
            };
          };
      in rec {
        defaultPackage = packages.default;
        devShells = rec {
          default = pythoneda-shared-pythonlang-artf-domain-python312;
          pythoneda-shared-pythonlang-artf-domain-python39 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-shared-pythonlang-artf-domain-python39;
            python = pkgs.python39;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python39;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-shared-pythonlang-artf-domain-python310 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-shared-pythonlang-artf-domain-python310;
            python = pkgs.python310;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python310;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-shared-pythonlang-artf-domain-python311 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-shared-pythonlang-artf-domain-python311;
            python = pkgs.python311;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python311;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-shared-pythonlang-artf-domain-python312 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-shared-pythonlang-artf-domain-python312;
            python = pkgs.python312;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python312;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
            inherit archRole layer org pkgs repo space;
          };
          pythoneda-shared-pythonlang-artf-domain-python313 = shared.devShell-for {
            banner = "${
                pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313
              }/bin/banner.sh";
            extra-namespaces = "";
            nixpkgs-release = nixpkgsRelease;
            package = packages.pythoneda-shared-pythonlang-artf-domain-python313;
            python = pkgs.python313;
            pythoneda-shared-pythonlang-banner =
              pythoneda-shared-pythonlang-banner.packages.${system}.pythoneda-shared-pythonlang-banner-python313;
            pythoneda-shared-pythonlang-domain =
              pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python313;
            inherit archRole layer org pkgs repo space;
          };
        };
        packages = rec {
          default = pythoneda-shared-pythonlang-artf-domain-python312;
          pythoneda-shared-pythonlang-artf-domain-python39 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python39;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python39;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python39;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python39;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python39;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python39;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python39;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python39;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python39;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python39;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python39;
            };
          pythoneda-shared-pythonlang-artf-domain-python310 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python310;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python310;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python310;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python310;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python310;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python310;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python310;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python310;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python310;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python310;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python310;
            };
          pythoneda-shared-pythonlang-artf-domain-python311 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python311;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python311;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python311;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python311;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python311;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python311;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python311;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python311;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python311;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python311;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python311;
            };
          pythoneda-shared-pythonlang-artf-domain-python312 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python312;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python312;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python312;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python312;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python312;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python312;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python312;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python312;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python312;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python312;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python312;
            };
          pythoneda-shared-pythonlang-artf-domain-python313 =
            pythoneda-shared-pythonlang-artf-domain-for {
              python = pkgs.python313;
              pythoneda-external-artf-flakeutils =
                pythoneda-external-artf-flakeutils.packages.${system}.pythoneda-external-artf-flakeutils-python313;
              pythoneda-external-artf-nixpkgs =
                pythoneda-external-artf-nixpkgs.packages.${system}.pythoneda-external-artf-nixpkgs-python313;
              pythoneda-shared-artifact-artifact-events =
                pythoneda-shared-artifact-artifact-events.packages.${system}.pythoneda-shared-artifact-artifact-events-python313;
              pythoneda-shared-artifact-artifact-shared =
                pythoneda-shared-artifact-artifact-shared.packages.${system}.pythoneda-shared-artifact-artifact-shared-python313;
              pythoneda-shared-artifact-events =
                pythoneda-shared-artifact-events.packages.${system}.pythoneda-shared-artifact-events-python313;
              pythoneda-shared-artifact-shared =
                pythoneda-shared-artifact-shared.packages.${system}.pythoneda-shared-artifact-shared-python313;
              pythoneda-shared-git-shared =
                pythoneda-shared-git-shared.packages.${system}.pythoneda-shared-git-shared-python313;
              pythoneda-shared-nix-flake-shared =
                pythoneda-shared-nix-flake-shared.packages.${system}.pythoneda-shared-nix-flake-shared-python313;
              pythoneda-shared-pythonlang-artf-banner =
                pythoneda-shared-pythonlang-artf-banner.packages.${system}.pythoneda-shared-pythonlang-artf-banner-python313;
              pythoneda-shared-pythonlang-domain =
                pythoneda-shared-pythonlang-domain.packages.${system}.pythoneda-shared-pythonlang-domain-python313;
            };
        };
      });
}
