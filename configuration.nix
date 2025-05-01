{ config, pkgs, ...}: {

    imports = [
        ./hardware-configuration.nix

        ./ring0/audio.nix
        ./ring0/boot.nix
        ./ring0/gui.nix
        ./ring0/network.nix
        ./ring0/video.nix
        
        ./ring1/browser.nix
        ./ring1/communication.nix
        ./ring1/gaming.nix
        ./ring1/multimedia.nix
    ];

    nixpkgs.config.allowUnfree = true;
    time.timeZone = "Asia/Yekaterinburg";

    users.users.yerushka = {
        isNormalUser = true;
        extraGroups = [ "wheel" ];
    };

    nix.gc = {
        automatic = true;
        dates = "monthly";
        options = "--delete-older-than 30d";
    };

    system = {
        stateVersion = "24.11";
        autoUpgrade = {
            enable = true;
            dates = "weekly";
        };
    };
}