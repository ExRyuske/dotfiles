{ # https://wiki.nixos.org/wiki/Steam https://wiki.nixos.org/wiki/GameMode
  programs = {
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };

    gamemode.enable = true;
  };
  
  environment.systemPackages = with pkgs; [
    mangohud
    heroic
    prismlauncher
  ];
}
