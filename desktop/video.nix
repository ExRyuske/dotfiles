{ config, pkgs, inputs, ...}: {

    hardware.graphics = {
        enable = true;
        enable32Bit = true;
        extraPackages = with pkgs; [ rocmPackages.clr.icd ];
    };
}