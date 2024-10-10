{ inputs, pkgs, ... }: {
  services.jellyfin = {
    enable = true;
    openFirewall = true;
  };

  # Packages
  environment.systemPackages = with pkgs; [
    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
  ];
}