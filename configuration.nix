{ inputs, pkgs, ... }: {
  imports = [
    ./modules/system
  ];

  # Version of NixOS
  system.stateVersion = "24.11";

  # Unfree Software
  nixpkgs.config.allowUnfree = true;

  # Linux Kernel
  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;

  # System Time
  time = {
    hardwareClockInLocalTime = true;
    timeZone = "Asia/Yekaterinburg";
  };

  nix = {

    # Automation Garbage Collection
    gc = {
      automatic = true;
      dates = "monthly";
    };

    settings = {

      # Automatic Storage Optimization
      auto-optimise-store = true;

      # Enable Flakes
      experimental-features = [
        "nix-command"
        "flakes"
      ];

      # Binary Cache
      substituters = [
        "https://cache.nixos.org"
        "https://nix-community.cachix.org"
      ];
      trusted-public-keys = [
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      ];
    };
  };
}