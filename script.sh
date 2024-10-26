#!/bin/sh

if [ "$1" = "bender"  ] || [ "$1" = "anton"  ] || [ "$1" = "vegapunk" ]; then
    sudo rm -r ~/dotfiles
    if [ "$2" = "install" ]; then
        nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
        sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ~/dotfiles/hosts/"$1"/disko.nix
        sudo nixos-generate-config --no-filesystems --root /mnt
        sudo rm /mnt/etc/nixos/configuration.nix
        sudo mv ~/dotfiles/* /mnt/etc/nixos/
        sudo nixos-install --flake /mnt/etc/nixos#"$1"
    elif [ "$2" = "update" ]; then
        sudo rm -r /etc/nixos/*
        git clone https://github.com/ExRyuske/dotfiles.git
        sudo nixos-generate-config --no-filesystems
        sudo rm /etc/nixos/configuration.nix
        sudo mv ~/dotfiles/* /etc/nixos/
        sudo nixos-rebuild switch --flake /etc/nixos#"$1"
    else
        echo "ERROR"
    fi
else
    echo "ERROR"
fi