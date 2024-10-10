#!/bin/sh

if [ "$1" = "bender"  ] || [ "$1" = "jovian"  ] || [ "$1" = "anton"  ] || [ "$1" = "vegapunk" ]; then
    if [ "$2" = "install" ]; then
        if [ "$3" = "" ]; then
            nix-shell -p git --command "git clone https://github.com/ExRyuske/dotfiles.git && exit"
            sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko ~/dotfiles/hosts/"$1"/disko-config.nix
            sudo nixos-generate-config --no-filesystems --root /mnt
            sudo rm /mnt/etc/nixos/configuration.nix
            sudo mv ~/dotfiles/* /mnt/etc/nixos/
            sudo rm -r ~/dotfiles
            sudo nixos-install --flake /mnt/etc/nixos#"$1"
        elif [ "$3" = "home-manager" ]; then
            git clone https://github.com/ExRyuske/dotfiles.git
            mkdir -p ~/.config/home-manager/
            rm -r ~/.config/home-manager/*
            mv ~/dotfiles/home/* ~/.config/home-manager/
            rm -r ~/dotfiles
            nix run home-manager/master -- init --switch ~/.config/home-manager#"$1"
        else
            echo "ERROR"
        fi
    elif [ "$2" = "update" ]; then
        if [ "$3" = "" ]; then
            git clone https://github.com/ExRyuske/dotfiles.git
            sudo rm -r /etc/nixos/*
            sudo nixos-generate-config --no-filesystems
            sudo rm /etc/nixos/configuration.nix
            sudo mv ~/dotfiles/* /etc/nixos/
            sudo rm -r ~/dotfiles
            sudo nixos-rebuild switch --flake /etc/nixos#"$1"
        elif [ "$3" = "home-manager" ]; then
            git clone https://github.com/ExRyuske/dotfiles.git
            rm -r ~/.config/home-manager/*
            mv ~/dotfiles/home/* ~/.config/home-manager/
            rm -r ~/dotfiles
            home-manager switch --flake ~/.config/home-manager#"$1"
        else
            echo "ERROR"
        fi
    else
        echo "ERROR"
    fi
else
    echo "ERROR"
fi