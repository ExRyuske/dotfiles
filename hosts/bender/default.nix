{ inputs, pkgs, ... }: {
  imports = [
    ./disko-config.nix
    ../../hardware-configuration.nix
    ../../configuration.nix
    
    ../../modules/amd.nix
    ../../modules/desktop
    ../../modules/desktop-environment/kde.nix
    ../../modules/desktop/virt-manager.nix
    ../../modules/desktop/gaming.nix
    ../../modules/desktop/sunshine.nix
    ../../modules/desktop/obs.nix
  ];

  # Network
  networking.hostName = "bender";

  # SSD with Games
  fileSystems."/home/exryuske/Games" = {
    device = "/dev/disk/by-uuid/118d21f9-0738-4b4d-8f40-92276fe55cf2";
    fsType = "ext4";
    options = [
      "users"
      "nofail"
      "exec"
    ];
  };

  # User
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

  # Packages
  environment.systemPackages = with pkgs; [
    citrix_workspace
    _64gram
    krita
    nomacs
    qbittorrent
    upscayl
    vesktop
    vlc
    vscode
    easyeffects
    gh
    nekoray
  ];
}