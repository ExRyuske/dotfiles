{ config, pkgs, inputs, ...}: {

    imports = [
        ../hardware-configuration.nix
        ../disko.nix

        ./apps.nix
        ./audio.nix
        ./boot.nix
        ./desktop.nix
        ./system.nix
        ./user.nix
        ./video.nix
    ];
}