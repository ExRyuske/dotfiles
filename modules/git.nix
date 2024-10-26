{ inputs, config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/Git
  programs.git = {
    enable = true;
    config = {
      credential.helper = "libsecret";
      push.autoSetupRemote = true;
    };
  };
}
