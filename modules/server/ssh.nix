{ config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/SSH_public_key_authentication
  services.openssh.enable = true;
}
