{ inputs, pkgs, ... }: {
  programs.bash.shellAliases = {
    mgp = "git add . && git commit -m \"update\" && git push";
    mhi = "curl https://raw.githubusercontent.com/ExRyuske/dotfiles/refs/heads/main/script.sh | sh -s $HOSTNAME install home-manager";
    mnu = "curl https://raw.githubusercontent.com/ExRyuske/dotfiles/refs/heads/main/script.sh | sh -s $HOSTNAME update";
    mhu = "curl https://raw.githubusercontent.com/ExRyuske/dotfiles/refs/heads/main/script.sh | sh -s $HOSTNAME update home-manager";
  };
}