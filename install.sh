#!/bin/sh
sudo rm -r /etc/nixos/*
sudo nixos-generate-config
sudo rm /etc/nixos/configuration.nix
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
sudo mv ~/dotfiles/* /etc/nixos/
rm -r ~/dotfiles
sudo nixos-rebuild switch
sudo reboot