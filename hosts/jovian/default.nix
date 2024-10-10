{ inputs, pkgs, ... }: {
  imports = [
    ./disko-config.nix
    ../../hardware-configuration.nix
    ../../configuration.nix

#    ../../modules/amd.nix
    ../../modules/desktop
    ../../modules/desktop-environment/gnome.nix
#    ../../modules/desktop/gaming.nix
  ];

  # Network
  networking.hostName = "jovian";

  # User
  users.users.exryuske = {
      hashedPassword = "$y$j9T$t1hNl4f8PPpbCKTh2EV881$6f64lp0OxXMlt2zGtP41vhV4cN1eNHo02k1FIDUMpQ5";
      isNormalUser = true;
      extraGroups = [
      "wheel"
      "networkmanager"
      "gamemode"
    ];
  };

  # Packages
  environment.systemPackages = with pkgs; [ qbittorrent ];
}