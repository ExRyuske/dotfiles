{ config, pkgs, inputs, ...}: {

    services.xserver = {
        enable = true;
        displayManager.gdm.enable = true;
        desktopManager.gnome.enable = true;
    };

    networking.networkmanager.enable = true;
}