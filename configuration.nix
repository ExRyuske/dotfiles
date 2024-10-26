{ config, pkgs, lib, ... }: {
  imports = [
    ./modules/amd.nix
    ./modules/bash.nix
    ./modules/git.nix
    ./modules/grub.nix
  ];

  # https://wiki.nixos.org/wiki/FAQ/When_do_I_update_stateVersion 
  system.stateVersion = "24.11";

  # https://wiki.nixos.org/wiki/Unfree_software
  nixpkgs.config.allowUnfree = true;

  # https://wiki.nixos.org/wiki/Linux_kernel
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # https://wiki.nixos.org/wiki/Dual_Booting_NixOS_and_Windows
  time = {
    hardwareClockInLocalTime = true;
    timeZone = "Asia/Yekaterinburg";
  };

  # https://wiki.nixos.org/wiki/Storage_optimization
  nix = {
    gc = {
      automatic = true;
      dates = "monthly";
    };

    settings = {
      auto-optimise-store = true;

      # https://wiki.nixos.org/wiki/Flakes
      experimental-features = [
        "nix-command"
        "flakes"
      ];

      # https://wiki.nixos.org/wiki/Binary_Cache
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
