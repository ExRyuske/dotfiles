{ config, pkgs, inputs, ...}: {

    imports = [
        ../disko.nix
        ../hardware-configuration.nix

        ./modules/apps.nix
        ./modules/audio.nix
        ./modules/boot.nix
        ./modules/desktop.nix
        ./modules/system.nix
        ./modules/user.nix
        ./modules/video.nix
    ];
}