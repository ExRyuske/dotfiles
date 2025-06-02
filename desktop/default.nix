{ config, pkgs, ...}: {

    imports = [
        ./../hardware-configuration.nix
        ./../disko.nix

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