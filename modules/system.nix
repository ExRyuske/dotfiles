{ config, pkgs, ...}: {

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

    nixpkgs.config.allowUnfree = true;
    time.timeZone = "Asia/Yekaterinburg";
}