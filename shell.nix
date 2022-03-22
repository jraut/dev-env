with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "dev-env";

  # Will be available in shell via PATH
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
    pkgs.ripgrep
    pkgs.just

    # zsh and shell environment
    pkgs.zsh
    pkgs.oh-my-zsh
    pkgs.zsh-nix-shell
    pkgs.zsh-fzf-tab
    pkgs.spaceship-prompt
    pkgs.zsh-you-should-use
    pkgs.tmux
    pkgs.jump
  ];
}
