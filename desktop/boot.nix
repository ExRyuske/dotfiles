{ config, pkgs, ...}: {

    boot.loader.grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
    };
}