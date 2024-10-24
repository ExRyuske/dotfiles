{ # https://wiki.nixos.org/wiki/Virt-manager https://wiki.nixos.org/wiki/Libvirt
  virtualisation = {
    libvirtd = {
      enable = true;
      swtpm.enable = true;
      ovmf.packages = with pkgs; [ OVMFFull.fd ];
    };
    spiceUSBRedirection.enable = true;
  };

  programs.virt-manager.enable = true;
}
