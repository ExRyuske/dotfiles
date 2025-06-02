#!/bin/sh
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
sudo nixos-generate-config --no-filesystems --root ./
sudo mv ./etc/nixos/hadrware-configuration.nix ./dotfiles
sudo nix --experimental-features 'nix-command flakes' run 'github:nix-community/disko/latest#disko-install' -- --write-efi-boot-entries --flake ./dotfiles#desktop --disk main /dev/sda
#reboot