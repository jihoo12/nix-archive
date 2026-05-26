{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.agda.withPackages (p: [
      p.cubical
      p.standard-library
    ]))
  ];

  shellHook = ''
    agda --version
  '';
}
