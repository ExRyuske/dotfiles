{ config, pkgs, ...}: {

    programs.obs-studio = {
        enable = true;
    };

    environment.systemPackages = with pkgs; [
        vlc
        nomacs
    ];
}