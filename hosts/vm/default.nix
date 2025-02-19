{ pkgs, config, lib, ... }:

{
    imports = [
        ./hardware-configuration.nix
        ./../../modules/core
    ];

    # allow local remote access to make our life easier...
    services.openssh = {
        enable = true;
        ports = [ 22 ];
        settings = {
            PasswordAuthentication = true;
            AllowUsers = null;
            PermitRootLogin = "yes";
        };
    };
}