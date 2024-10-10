{ inputs, pkgs, ... }: {
  imports = [
    ./disko-config.nix
    ../../hardware-configuration.nix
    ../../configuration.nix

    ../../modules/server
    ../../modules/server/home-assistant.nix
    ../../modules/server/jellyfin.nix
  ];

  # Network
  networking.hostName = "anton";

  # User
  users.users = {
    server = {
      hashedPassword = "$y$j9T$k/dA1o7F.yOM8nfVmGO6g/$prdZg.ROfpxYcIowNao2pCVgcjjspuSdnwdhmOxw7h/";
      isNormalUser = true;
      extraGroups = [
        "wheel"
        "podman"
      ];
    };
    exryuske = {
      hashedPassword = "$y$j9T$t1hNl4f8PPpbCKTh2EV881$6f64lp0OxXMlt2zGtP41vhV4cN1eNHo02k1FIDUMpQ5";
      isNormalUser = true;
    };
  };

  # Samba
  services.samba.shares = {
    root = {
      "path" = "/";
      "browseable" = "yes";
      "read only" = "no";
      "guest ok" = "no";
      "create mask" = "0644";
      "directory mask" = "0755";
      "force user" = "server";
    };
    exryuske = {
      "path" = "/home/exryuske";
      "browseable" = "yes";
      "read only" = "no";
      "guest ok" = "no";
      "create mask" = "0644";
      "directory mask" = "0755";
      "force user" = "exryuske";
    };
  };
}