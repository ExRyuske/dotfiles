{ config, pkgs, ...}: {

    environment.systemPackages = with pkgs; [
        brave
        #citrix_workspace
        discord
        heroic
        keepassxc
        nomacs
        obsidian
        steamtinkerlaunch
        telegram-desktop
        vlc
        vscode
    ];

    programs = {
        obs-studio.enable = true;

        gamescope.enable = true;
        steam = {
            enable = true;
        };
    };

    services.syncthing = {
        enable = true;
        openDefaultPorts = true;
    };
}