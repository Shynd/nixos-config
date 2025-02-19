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
  ];
}