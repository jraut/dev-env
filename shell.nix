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
    # pkgs.curlie
    pkgs.httpie
    pkgs.delta
    pkgs.pgcli
    pkgs.just
    pkgs.lazygit
    pkgs.ripgrep
    pkgs.just
    # pkgs.sublime-merge
    pkgs.vscodium.fhs
    pkgs.sd
    # pkgs.dust

    # zsh and shell environment
    pkgs.zsh
    pkgs.zsh-nix-shell
    pkgs.zsh-fzf-tab
    pkgs.zsh-you-should-use
    pkgs.starship
    pkgs.tmux
    pkgs.jump

    # programming envs, compilers and runtimes
    pkgs.nim
    pkgs.nodejs
    pkgs.asdf-vm
    (yarn.override { nodejs = nodejs-16_x; })
    pkgs.nodejs-16_x
    pkgs.docker
    pkgs.docker-compose
    pkgs.git
    pkgs.yarn
  ];
}
