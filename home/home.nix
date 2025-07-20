{
  config,
  pkgs,
  pkgs-unstable,
  inputs,
  ...
}:
{

    home.packages = with pkgs; [ 
    nixfmt-rfc-style # formater for nix
    nil # language server for nix
      firefox
      kate
      vscode
      neovim
    ];


    home.shellAliases = {
        nrs = "sudo nixos-rebuild switch --flake /home/damyan/nixos-config#";
        nrt = "sudo nixos-rebuild test --flake /home/damyan/nixos-config#";
    };

    home.username = "damyan";
    home.homeDirectory = "/home/damyan";

    programs.home-manager.enable = true;

    home.stateVersion = "23.11";

    programs.git = {
        enable = true;
        userEmail = "ddminedd@gmail.com";
        userName = "DDamyan";
    };
}
