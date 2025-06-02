#!/bin/sh
nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
#sudo nixos-generate-config --no-filesystems --root ./
#sudo mv ./etc/nixos/hardware-configuration.nix ./dotfiles
#sudo nix --experimental-features 'nix-command flakes' run 'github:nix-community/disko/latest#disko-install' -- --write-efi-boot-entries --flake ./dotfiles#desktop --disk main /dev/sda
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --yes-wipe-all-disks --mode disko ./dotfiles/disko.nix
sudo nixos-generate-config --no-filesystems --root /mnt
sudo rm /mnt/etc/nixos/configuration.nix
sudo mv ./dotfiles/* /mnt/etc/nixos
sudo nixos-install --no-channel-copy --flake /mnt/etc/nixos#desktop
#reboot