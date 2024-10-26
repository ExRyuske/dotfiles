{ config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/KDE
  services = {
    xserver.enable = false;
    desktopManager.plasma6.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}
