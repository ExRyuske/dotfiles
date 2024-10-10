{ inputs, pkgs, ...}: {
  
  # Version of Home Manager
  home.stateVersion = "24.11";

  # Install Home Manager
  programs.home-manager.enable = true;
}