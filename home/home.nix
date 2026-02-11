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
    #kdePackages.kate
    #flutter
    vscode
    neovim
    discord

    #androidenv.androidPkgs.androidsdk
    # curl
    # unzip
    # xz
    # zip
  ];

  home.shellAliases = {
    nrs = "sudo nixos-rebuild switch --flake /home/damyan/nixos-config#";
    nrt = "sudo nixos-rebuild test --flake /home/damyan/nixos-config#";
    nup = "nix flake update --flake /home/damyan/nixos-config#";
  };

  home.username = "damyan";
  home.homeDirectory = "/home/damyan";

  programs.home-manager.enable = true;

  programs.bash.enable = true;
  home.stateVersion = "23.11";

  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "ddminedd@gmail.com";
        name = "DDamyan";
      };
    };
  };
}
