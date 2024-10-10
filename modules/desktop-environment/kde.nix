{ inputs, pkgs, ... }: {
  services = {

    # Disable Xorg
    xserver.enable = false;

    # Plasma
    desktopManager.plasma6.enable = true;

    # SDDM
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  environment = {

    # Excluding Applications
    plasma6.excludePackages = with pkgs.kdePackages; [
      elisa
      gwenview
      okular
      khelpcenter
      print-manager
    ];
  };
}