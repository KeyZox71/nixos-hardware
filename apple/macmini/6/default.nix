{
  lib,
  ...
}:
{
  imports = [
    ../.
    ../../../common/gpu/24.05-compat.nix
    ../../../common/cpu/intel/ivy-bridge/default.nix
    ../../../common/networking/broadcom/bcm4331/default.nix
  ];

  hardware.facetimehd.enable = false;

  boot.kernelModules = [
    "coretemp"
    "applesmc"
  ];

  services = {
    thermald.enable = lib.mkDefault true;
  };
}
