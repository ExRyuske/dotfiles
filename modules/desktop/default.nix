{ inputs, pkgs, ... }: {
  imports = [
    ./pipewire.nix
  ];

  # Network
  networking = {
    networkmanager.enable = true;
    firewall.checkReversePath = "loose";
  };

  environment = {

    # Enable Ozone Wayland
    sessionVariables.NIXOS_OZONE_WL = "1";

    # Packages
    systemPackages = with pkgs; [
      brave
      librewolf
    ];
  };
}