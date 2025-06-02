#!/bin/sh
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
sudo nixos-generate-config --no-filesystems --dir ./dotfiles
sudo rm ./dotfiles/configuration.nix
sudo nixos-rebuild switch --flake ./dotfiles#desktop
#reboot