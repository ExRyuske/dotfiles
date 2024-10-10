{ inputs, pkgs, ... }: {
  services = {
    samba = {
      enable = true;
      openFirewall = true;
    };

    samba-wsdd = {
      enable = true;
      openFirewall = true;
    };

    avahi = {
      nssmdns4 = true;
      enable = true;
      openFirewall = true;
      publish = {
        enable = true;
        userServices = true;
      };
    };
  };
}