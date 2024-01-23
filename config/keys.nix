{ config, lib, pkgs, ... }:

{
  plugins = {
    which-key = {
      registrations = config.plugins.telescope.keymaps // { };
    };
  };
}
