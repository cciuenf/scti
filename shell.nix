{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  name = "scti";

  buildInputs = with nodePackages; [
    nodejs-16_x
    yarn
    eslint
    prettier

    python39
  ];

  shellHook = ''
    export PATH="./node_modules/.bin:$PATH"
  '';
}
