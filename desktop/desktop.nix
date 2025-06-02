{ config, pkgs, inputs, ...}: {

    services = {
        displayManager.gdm.enable = true;
        desktopManager.gnome.enable = true;
    };

    environment.gnome.excludePackages = with pkgs; [ ];

    networking.networkmanager.enable = true;
}