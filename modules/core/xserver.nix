{ pkgs, username, ... }:

{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "no";
    };

    displayManager.autoLogin = {
      enable = true;
      user = "${username}";
    };
    libinput = {
      enable = true;
    };
  };

  # to prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}