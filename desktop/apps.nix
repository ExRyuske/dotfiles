{ config, pkgs, inputs, ...}: {

    environment.systemPackages = with pkgs; [
        #citrix_workspace
        discord
        heroic
        easyeffects
        keepass
        nomacs
        obsidian
        steamtinkerlaunch
        telegram-desktop
        vlc
        vscodium
        krita
        spotify
        blender-hip
    ];

    programs = {
        obs-studio.enable = true;
        gamescope.enable = true;
        steam.enable = true;
        chromium = {
            enable = true;
            extensions = [
                "mmhlniccooihdimnnjhamobppdhaolme" # Kee
                "dhdgffkkebhmkfjojejmpbldmpobfkfo" # Tampermonkey
                "ddkjiahejlhfcafbddmgiahcphecmpfh" # uBlock Origin Lite
                "ammjkodgmmoknidbanneddgankgfejfh" # 7TV
                "ponfpcnoihfmfllpaingbgckeeldkhle" # Enhancer for YouTube
                "mnjggcdmjocbbbhaepdhchncahnbgone" # SponsorBlock for YouTube
                "kdbmhfkmnlmbkgbabkdealhhbfhlmmon" # SteamDB
            ];
        };
    };

    services.syncthing = {
        enable = true;
        openDefaultPorts = true;
    };
}