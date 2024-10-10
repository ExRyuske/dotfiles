{ inputs, pkgs, ... }: {
  imports = [
    ./grub.nix
    ./git.nix
    ./bash.nix
  ];
}