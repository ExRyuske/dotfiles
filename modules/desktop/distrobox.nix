{ # https://wiki.nixos.org/wiki/Distrobox
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  environment.systemPackages = with pkgs; [ distrobox ];
}
