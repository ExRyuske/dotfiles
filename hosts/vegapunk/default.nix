{ inputs, config, pkgs, lib, ... }: {
  imports = [
    ../../configuration.nix
    ./disko.nix

    ../../modules/desktop/distrobox.nix
    ../../modules/desktop/gaming.nix
    ../../modules/desktop/kde.nix
    ../../modules/desktop/obs-studio.nix
    ../../modules/desktop/pipewire.nix
    ../../modules/desktop/virt-manager.nix
  ];

  networking.hostName = "vegapunk";

  # Users
  users.users.exryuske = {
    hashedPassword = "$y$j9T$t1hNl4f8PPpbCKTh2EV881$6f64lp0OxXMlt2zGtP41vhV4cN1eNHo02k1FIDUMpQ5";
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "gamemode"
      "libvirtd"
    ];
  };

  # Logitech Driving Force
  hardware.new-lg4ff.enable = true;

  # Packages
  environment.systemPackages = with pkgs; [
    librewolf
    krita
    nomacs
    vesktop
    telegram-desktop
    qbittorrent
    vlc
    easyeffects
    nekoray
  ];
}
