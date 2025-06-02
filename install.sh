#!/bin/sh
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
sudo nixos-generate-config --no-filesystems --root /mnt
sudo vm ./dotfiles/* /mnt/etc/nixos
sudo nixos-install --flake /mnt/etc/nixos#desktop
#reboot