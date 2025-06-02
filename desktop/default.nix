{ config, pkgs, ...}: {

    imports = [
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