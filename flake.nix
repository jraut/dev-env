{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };


  outputs = { self, nixpkgs }: {
    packages."aarch64-darwin".default = let
      pkgs = nixpkgs.legacyPackages."aarch64-darwin";
    in pkgs.buildEnv {
      name = "home-packages";
      paths = with pkgs; [

        # general tools
        git

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
   just
   lazygit
   ripgrep
   just
    # sublime-merge unfree
   sd
    #dust

    # zsh and shell environment
   starship
   tmux
   jump

   # osx utils etc
   rectangle # resize windows
   iterm2
   starship
   brave
   firefox
   # arc-browser unfree
   # spotify unfree
   # slack unfree
   slackdump
  
  # editors tools code
  zed-editor
  vscodium

    # programming envs, compilers and runtimes
   nim
   docker
   git
   # nodejs manage outside of nix to use nvm
   # yarn manage outside of nix to use nvm
    # (yarn.override { nodejs = null; })

   # ai
   ollama


       ];
    };
  };
}
