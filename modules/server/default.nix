{ inputs, pkgs, ... }: {
  imports = [
    ./ssh.nix
    ./samba.nix
    ./podman.nix
  ];
}