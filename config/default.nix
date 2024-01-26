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

  extraConfigLua = ''
    vim.g.mapleader = " "
    vim.g.maplocalleader = " "
    vim.opt.number = true
    vim.opt.relativenumber = true
  '';


  extraPlugins =
    [
      pkgs.vimPlugins.rose-pine
    ];

  colorscheme = "rose-pine";
}
