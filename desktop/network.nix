{ config, pkgs, inputs, ...}: {

    networking = {
        networkmanager.enable = true;
        hostName = "exryuske";
    };
}