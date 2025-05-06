{config, pkgs, pkgs-unstable, inputs,  ... }: {

    home.packages = with pkgs; [ 
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
        userEmail = "";
        userName = "";
    };


}
