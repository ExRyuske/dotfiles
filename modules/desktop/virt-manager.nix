{ inputs, config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/Libvirt
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.packages = with pkgs; [ OVMFFull.fd ];
      };
    };

    spiceUSBRedirection.enable = true;
  };

  # https://wiki.nixos.org/wiki/Virt-manager
  programs.virt-manager.enable = true;
}
