{ config, pkgs, lib, ... }: { # https://search.nixos.org/options?channel=unstable&query=programs.bash
  programs.bash.shellAliases = {
    mnu = "curl https://raw.githubusercontent.com/ExRyuske/dotfiles/refs/heads/main/script.sh | sh -s $HOSTNAME update";
  };
}
