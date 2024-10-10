{ inputs, pkgs, ... }: {
  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    # OpenCL
    extraPackages = with pkgs; [ rocmPackages.clr.icd ];
  };

  # HIP
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