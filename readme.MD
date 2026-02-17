# dev env files

Currently, the default nix env has been build according to https://sandstorm.de/blog/posts/my-first-steps-with-nix-on-mac-osx-as-homebrew-replacement/

It uses Nix Profile and Flakes. 

## Howto

### First installation (nix)
```
nix profile install .
```

Change directory to the folder containing these files and run the above to install the flake of local global deps 

### Verify the profile installation 

````
nix profile list
```

### Upgrade to the Changes to current profile (nix)

```
nix profile upgrade dev-env
```

To fetch newly added packages to the profile. Writes the package versions to a lockfile `flakes.lock`.

### Update Flake Input (package versions in flake.lock)

```
nix flake update
```

This command updates the `flake.lock` file, which contains the version information for the inputs used in your flake. 

After updating the flake inputs, apply the changes to your system configuration with either upgrading (see above) or with:

```
sudo nixos-rebuild switch --flake .
```

## NODE.JS

https://www.uglydirtylittlestrawberry.co.uk/posts/using-nvm-with-yarn-nix-shells/

> "The desired outcome is to not have a node installation built into the Nix shell so that NVM’s managed installations are picked up from outside of the shell. To achieve this I modified my shell.nix file to look like this..."

Instead I removed nodejs and yarn from nix for now.
    - Use NVM for node management, installed directly to os instead of nix
    - NVM pulls yarn, as it is listed as a default dependency in .nvm/default-packages and is thus pulled
    