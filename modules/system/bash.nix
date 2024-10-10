{ inputs, pkgs, ... }: {
  programs.bash.shellAliases = {
    mgp = "git add . && git commit -m \"update\" && git push";
    mnu = "curl https://raw.githubusercontent.com/ExRyuske/dotfiles/refs/heads/main/install.sh | sh -s $HOSTNAME update";
    mhu = "curl https://raw.githubusercontent.com/ExRyuske/dotfiles/refs/heads/main/install.sh | sh -s $HOSTNAME update home-manager";
  };
}