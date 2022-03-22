with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "dev-env";

  # Will be available in shell shell
  buildInputs = [
    # tooling
    pkgs.fd
    pkgs.jq
    pkgs.bat-extras.prettybat
    pkgs.bat
    pkgs.tealdeer
    pkgs.curlie
    pkgs.httpie
    pkgs.delta
    pkgs.pgcli
    pkgs.just
    pkgs.lazygit
  ];
}
