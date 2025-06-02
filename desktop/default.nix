{ config, pkgs, inputs, ...}: {

    imports = [
        ./disko.nix
        ./hardware-configuration.nix

        ./apps.nix
        ./audio.nix
        ./boot.nix
        ./desktop.nix
        ./network.nix
        ./system.nix
        ./user.nix
        ./video.nix
    ];
}