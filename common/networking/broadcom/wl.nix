# This file is here for enabling broadcom wl, aka broadcom-sta driver
{
  config,
}:
{
  boot = {
    kernelModules = [
      "wl"
    ];
    blacklistedKernelModules = [
      "b43"
      "bcma"
    ];
    extraModulePackages = [
      # install broadcom driver for macos wifi
      # note : the user will need to add it to `permittedInsecurePackages`
      config.boot.kernelPackages.broadcom_sta
    ];
  };
}
