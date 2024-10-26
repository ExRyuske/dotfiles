{ config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/Home_Assistant
  services.home-assistant = {
    enable = true;
    extraComponents = [
      "isal"
    ];
    config = {
      default_config = {};
    };
  };

  networking.firewall.allowedTCPPorts = [ 8123 ]
}
