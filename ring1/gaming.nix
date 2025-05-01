{ config, pkgs, ...}: {

    programs = {
        gamescope.enable = true;
        steam = {
            enable = true;
        };
    };
    
    environment.systemPackages = with pkgs; [
        steamtinkerlaunch
        heroic
    ];
}