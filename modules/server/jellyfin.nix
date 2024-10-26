{ inputs, config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/Jellyfin
  services.jellyfin = {
    enable = true;
    openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
  ];
}
