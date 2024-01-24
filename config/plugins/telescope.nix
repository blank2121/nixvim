{ config, lib, pkgs, ... }:

{
  plugins = {
    telescope = {
      enable = true;

      keymaps = {
        "<leader>fg" = "live_grep";
        "<leader>fd" = "fd";
        "<leader>fb" = "buffers";
        "gd" = "lsp_definitions";
        "<leader>uc" = "colorscheme";
      };
    };
  };

  plugins.which-key.registrations = config.plugins.telescope.keymaps // {
    "<leader>f" = "file+";
    "<leader>u" = "ui+";
  };
}

