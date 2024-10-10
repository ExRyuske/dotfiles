{ inputs, pkgs, ... }: {
  programs = {

    # GameMode
    gamemode.enable = true;

    # Steam
    steam = {
      enable = true;
      extraCompatPackages = with pkgs; [ proton-ge-bin ];
    };
  };

  # Packages
  environment.systemPackages = with pkgs; [
    prismlauncher
    heroic
    goverlay
    mangohud
    steamguard-cli
  ];
}
