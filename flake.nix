{
  description = "systema";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        name = "systema";

        pkgs = import nixpkgs { inherit system; };

        version = pkgs.lib.fileContents ./VERSION;

        buildInputs = with pkgs; [ ];

        LD_LIBRARY_PATH =
          with pkgs;
          "$LD_LIBRARY_PATH:${
            lib.makeLibraryPath [
              libGL
              xorg.libX11
              openssl
            ]
          }";
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          name = name;
          src = ./.;
          buildInputs = buildInputs;
          LD_LIBRARY_PATH = LD_LIBRARY_PATH;
          buildPhase = ''
            odin build . -define="VERSION=${version}" -o:speed --collection:lib=lib -out:${name}
          '';
          installPhase = ''
            mkdir -p $out/bin
            cp ${name} $out/bin
          '';
        };

        devShells.default = pkgs.mkShell {
          buildInputs = buildInputs;
          LD_LIBRARY_PATH = LD_LIBRARY_PATH;
        };
      }
    );
}
