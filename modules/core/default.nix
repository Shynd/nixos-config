{
  inputs,
  nixpkgs,
  self,
  username,
  host,
  ...
}:
{
  imports = [
    ./bootloader.nix
    #./hardware.nix # TODO
    ./xserver.nix
    ./network.nix
    ./nh.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./services.nix
    ./steam.nix
    ./system.nix
    # ./flatpak.nix # TODO (- To use Flatpak you must enable XDG Desktop Portals with xdg.portal.enable.)
    ./user.nix
  ];
}