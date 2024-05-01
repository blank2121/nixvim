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

      settings = {
        pickers = {
	  colorscheme = {
	    enable_preview = true;
	  };
	};
      };

    };
  };

  plugins.which-key.registrations = config.plugins.telescope.keymaps // {
    "<leader>f" = "file+";
    "<leader>u" = "ui+";
  };
}

