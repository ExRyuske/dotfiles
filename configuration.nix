{ config, pkgs, ...}: {

    imports = [
        ./hardware-configuration.nix

        ./modules/apps.nix
        ./modules/audio.nix
        ./modules/boot.nix
        ./modules/gui.nix
        ./modules/network.nix
        ./modules/system.nix
        ./modules/user.nix
        #./modules/video.nix
    ];
}