#!/bin/sh
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
sudo nixos-generate-config --no-filesystem --dir ./dotfiles
rm ./dotfiles/configuration.nix
#sudo mv ~/dotfiles/* /etc/nixos/
#rm -r ~/dotfiles
# sudo nix run github:nix-community/disko -- --mode disko /etc/nixos/disko.nix
sudo nixos-rebuild switch --flake ./dotfiles/nixos#desktop
reboot