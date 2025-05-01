#!/bin/sh
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
sudo mv ~/dotfiles/* /etc/nixos/
rm ~/dotfiles
sudo nixos-rebuild switch