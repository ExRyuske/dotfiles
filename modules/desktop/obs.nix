{ inputs, pkgs, ... }: {
  programs.obs-studio = {
    enable = true;
    plugins = with pkgs; [ obs-studio-plugins.obs-pipewire-audio-capture ];
  };

  # Shortcuts
  environment.systemPackages = with pkgs; [
    python3
  ];
}
