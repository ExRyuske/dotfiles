#!/bin/sh

if [ "$1" = "bender" ] || [ "$1" = "jovian" ] || [ "$1" = "anton" ] || [ "$1" = "vegapunk" ]; then
    if [ "$2" = "" ]; then
        nix-shell -p git --command "git clone https://github.com/ExRyuske/Dotfiles.git && exit"
        sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ~/Dotfiles/hosts/"$1"/disko-config.nix
        sudo nixos-generate-config --no-filesystems --root /mnt
        sudo rm /mnt/etc/nixos/configuration.nix
        sudo mv ~/Dotfiles/* /mnt/etc/nixos/
        rm -r ~/Dotfiles
        sudo nixos-install --flake /mnt/etc/nixos#"$1"
    elif [ "$2" = "update" ]; then
        if [ "$3" = "" ]; then
            git clone https://github.com/ExRyuske/Dotfiles.git
            sudo rm -r /etc/nixos/*
            sudo nixos-generate-config --no-filesystems
            sudo rm /etc/nixos/configuration.nix
            sudo mv ~/Dotfiles/* /etc/nixos/
            rm -r ~/Dotfiles
            sudo nixos-rebuild switch --flake /etc/nixos#"$1"
        elif [ "$3" = "home-manager" ]; then
            git clone https://github.com/ExRyuske/Dotfiles.git
            mkdir -p ~/.config/home-manager/
            rm -r ~/.config/home-manager/*
            mv ~/Dotfiles/home/* ~/.config/home-manager/
            rm -r ~/Dotfiles
            nix run home-manager/master -- init --switch ~/.config/home-manager#"$1"
        else
            echo "Wrong Argument"
        fi
    else
        echo "Wrong Argument"
    fi
else
    echo "Wrong Argument"
fi