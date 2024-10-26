{ config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/OBS_Studio
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [ obs-pipewire-audio-capture ]
  };
}
