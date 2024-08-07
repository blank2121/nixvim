{ config, pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./plugins/plugins.nix

    # basic conf
    ./keys.nix
    ./options.nix
    ./globals.nix
  ];

  clipboard.providers.wl-copy.enable = true;

  extraPlugins =
    [
      pkgs.vimPlugins.rose-pine
      pkgs.vimPlugins.srcery-vim
      pkgs.vimPlugins.nightfox-nvim
      pkgs.vimPlugins.gruvbox
      pkgs.vimPlugins.tokyonight-nvim
      pkgs.vimPlugins.oceanic-material
      pkgs.vimPlugins.catppuccin-nvim
      pkgs.vimPlugins.awesome-vim-colorschemes
    ];

  colorschemes.base16.enable= true;
  colorscheme = "base16-rose-pine";
  # colorschemes.base16.colorscheme = {
  #   base00 = "#3a2c28";
  #   base01 = "#564940";
  #   base02 = "#704339";
  #   base03 = "#8a644b";
  #   base04 = "#a8795a";
  #   base05 = "#d3c6b1";
  #   base06 = "#938579";
  #   base07 = "#ffffff";
  #   base08 = "#704339";
  #   base09 = "#a26757";
  #   base0A = "#b9896d";
  #   base0B = "#d3a284";
  #   base0C = "#6f5b4e";
  #   base0D = "#7d6759";
  #   base0E = "#4e3f36";
  #   base0F = "#77685c";
  # };
  # colorschemes.base16.colorscheme = {
  #   base00 = "#3e2f2c";
  #   base01 = "#6a4e44";
  #   base02 = "#b04a3a";
  #   base03 = "#8a6340";
  #   base04 = "#d0a362";
  #   base05 = "#e8d8c3";
  #   base06 = "#a77c71";
  #   base07 = "#ffffff";
  #   base08 = "#b04a3a";
  #   base09 = "#d76955";
  #   base0A = "#b47b57";
  #   base0B = "#e8c79e";
  #   base0C = "#7c5c51";
  #   base0D = "#9e6d4c";
  #   base0E = "#5b4539";
  #   base0F = "#7f6053";
  # };
}
