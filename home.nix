{ config, pkgs, ... }:

{
  # Define the Home Manager version to ensure compatibility
  home.stateVersion = "25.05"; # Adjust to your Home Manager version
  
  # User-specific configuration
  home.username = "toby";
  home.homeDirectory = "/home/toby";
  
  # Allow unfree packages if needed
  nixpkgs.config.allowUnfree = true;

  # Define packages to be installed
  home.packages = with pkgs; [


  ];

  # Define dotfiles to be managed
  home.file = {
    # Example: ".screenrc".source = "${config.home.homeDirectory}/.screenrc";
  };

  # Define environment variables
  home.sessionVariables = {
    # Example: EDITOR = "emacs";
  };

  # Enable Home Manager
  programs.home-manager.enable = true;
}


