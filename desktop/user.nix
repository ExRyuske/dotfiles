{ config, pkgs, inputs, ...}: {

    users.users.yerushka = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" ];
    };

    networking.hostName = "yerushka";
}