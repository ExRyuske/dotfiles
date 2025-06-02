{ config, pkgs, inputs, ...}: {

    imports = [
        ./disko.nix
        ./hardware-configuration.nix

        ./desktop/apps.nix
        ./desktop/audio.nix
        ./desktop/boot.nix
        ./desktop/desktop.nix
        ./desktop/network.nix
        ./desktop/system.nix
        ./desktop/user.nix
        ./desktop/video.nix
    ];
}