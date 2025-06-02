{ config, pkgs, inputs, ...}: {

    boot.kernelPackages = pkgs.linuxPackages_latest;

    nix.gc = {
        automatic = true;
        dates = "monthly";
        options = "--delete-older-than 30d";
    };

    system = {
        stateVersion = "25.05";
        autoUpgrade = {
            enable = true;
            dates = "weekly";
            flake = inputs.self.outPath;
            flags = [
                "--update-input"
                "nixpkgs"
                "--print-build-logs"
            ];
        };
    };

    nixpkgs.config.allowUnfree = true;
    time.timeZone = "Asia/Yekaterinburg";
}