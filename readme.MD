# dev env files

Currently, the default nix env has been build according to https://sandstorm.de/blog/posts/my-first-steps-with-nix-on-mac-osx-as-homebrew-replacement/

## Howto

# First installation (nix)
- change directory to this folder
- `nix profile install .` to install the flake of local global deps (verify with `nix profile list`)
- `nix profile upgrade 0` to upgrade the installation

## NODE.JS

https://www.uglydirtylittlestrawberry.co.uk/posts/using-nvm-with-yarn-nix-shells/

> "The desired outcome is to not have a node installation built into the Nix shell so that NVM’s managed installations are picked up from outside of the shell. To achieve this I modified my shell.nix file to look like this..."

Instead I removed nodejs and yarn from nix for now.
    - Use NVM for node management, installed directly to os instead of nix
    - NVM pulls yarn, as it is listed as a default dependency in .nvm/default-packages and is thus pulled
    