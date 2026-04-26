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
          just
          lazygit
          ripgrep
          just

          # sublime-merge
          sd
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
          # ungoogled-chromium

          # arc-browser unfree
          # spotify unfree
          slack
          slackdump

          # editors tools code
          zed-editor
          vscodium
          obsidian

          # programming envs, compilers and runtimes
          nim
          uv
          docker
          git
          jujutsu
          cmake
          alejandra # nix source code formatter
          bun
          qemu

          # nodejs manage outside of nix to use nvm - see https://www.uglydirtylittlestrawberry.co.uk/posts/using-nvm-with-yarn-nix-shells/
          # yarn manage outside of nix to use nvm
          # (yarn.override { nodejs = null; })

          # ai
          ollama
          claude-code
          github:akitaonrails/ai-jail
          tesseract
        ];
      };
  };
}
