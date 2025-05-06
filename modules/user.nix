{ config, pkgs, ...}: {

    users.users.yerushka = {
        isNormalUser = true;
        extraGroups = [ "wheel" "networkmanager" ];
    };
}