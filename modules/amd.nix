{ config, pkgs, lib, ... }: { # https://wiki.nixos.org/wiki/AMD_GPU
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = with pkgs; [ rocmPackages.clr.icd ];
  };

  systemd.tmpfiles.rules = 
  let
    rocmEnv = pkgs.symlinkJoin {
      name = "rocm-combined";
      paths = with pkgs.rocmPackages; [
        rocblas
        hipblas
        clr
      ];
    };
  in [
    "L+    /opt/rocm   -    -    -     -    ${rocmEnv}"
  ];
}
