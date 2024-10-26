{ config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/Dual_Booting_NixOS_and_Windows
  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = "nodev";
      efiSupport = true;
      useOSProber = true;
    };
  };
}
