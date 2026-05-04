{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
  }: {
    packages."aarch64-darwin".default = let
      pkgs = nixpkgs.legacyPackages."aarch64-darwin";
    in
      pkgs.buildEnv {
        name = "home-packages";
        paths = with pkgs; [
          # ... add your tools here

          # tooling
          eza
          fd
          jq
          bat-extras.prettybat
          bat
          tealdeer
          curlie
          httpie
          delta
          difftastic
          pgcli
          postgresql
          pgadmin4
          sqlite
          litecli
          lazygit
          ripgrep
          just
          tealdeer

          sd
          #sublime-merge  - not available on silicon
          #dust

          # zsh, shell environment, osx utils etc
          starship
          tmux
          jump
          rectangle # resize windows
          iterm2

          # browsers, web
          brave
          firefox
          #ungoogled-chromium - not available on silicon

          slack
          slackdump

          # editors tools code
          zed-editor
          vscodium
          obsidian

          # programming envs, compilers and runtimes
          lua
          rustc
          nim
          bun
          go
          deno
          elixir
          erlang
          docker
          git
          jujutsu
          cmake
          alejandra # nix source code formatter
          #cmake
          #coreutils
          uv
          pipx
          python315

          qemu

          # audio
          musescore
          rubberband
          sox

          # nodejs manage outside of nix to use nvm - see https://www.uglydirtylittlestrawberry.co.uk/posts/using-nvm-with-yarn-nix-shells/
          # yarn manage outside of nix to use nvm
          # (yarn.override { nodejs = null; })

          # ai
          ollama
          claude-code
          github:akitaonrails/ai-jail
          mcp-nixos
        ];
      };
  };
}
