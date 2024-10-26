{ inputs, config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/Steam
  programs = {
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };

    # https://wiki.nixos.org/wiki/GameMode
    gamemode.enable = true;
  };
  
  # https://wiki.nixos.org/wiki/Games
  environment.systemPackages = with pkgs; [
    mangohud
    heroic
    prismlauncher
  ];
}
