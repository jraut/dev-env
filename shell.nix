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

    # zsh and shell environment
    pkgs.zsh
    pkgs.oh-my-zsh
    pkgs.zsh-nix-shell
    pkgs.zsh-fzf-tab
    pkgs.spaceship-prompt
    pkgs.zsh-you-should-use
  ];
}
