{ inputs, pkgs, ... }: {
  boot.loader = {
    timeout = 1;
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      device = [ "nodev" ];
      efiSupport = true;
      useOSProber = true;
    };
  };
}