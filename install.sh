#!/bin/sh
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
sudo nixos-generate-config --no-filesystems --dir ./dotfiles
sudo rm ./dotfiles/configuration.nix
#sudo mv ~/dotfiles/* /etc/nixos/
#rm -r ~/dotfiles
# sudo nix run github:nix-community/disko -- --mode disko /etc/nixos/disko.nix
sudo nixos-rebuild switch --flake .#desktop
#reboot