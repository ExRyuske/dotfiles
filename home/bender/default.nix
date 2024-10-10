{ inputs, pkgs, ... }: {
  imports = [
    ../home.nix
  ];

  home = {

    # User
    username = "exryuske";
    homeDirectory = "/home/exryuske";

    file = {

      # Wallpaper
      "Pictures/Wallpaper/wallpaper.jpg".source = ./wallpaper.jpg;

      # 64Gram
      ".local/share/64Gram/tdata/shortcuts-custom.json".source = ./64Gram/tdata/shortcuts-custom.json;
    };
  };

  xdg.configFile = {

    # Easy Effects
    "easyeffects/input/ExRyuske.json".source = ./easyeffects/input/ExRyuske.json;
    "easyeffects/output/ExRyuske.json".source = ./easyeffects/output/ExRyuske.json;
  };

  programs = {

    # Git
    git = {
      enable = true;
      userName  = "Ryuunosuke Example";
      userEmail = "exryuske@proton.me";
    };
  };
}
