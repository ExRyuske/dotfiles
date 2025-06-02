{ config, pkgs, inputs, ...}: {

    boot.loader.grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
    };
}