{ config, lib, pkgs, ... }:
{
  plugins.lspsaga = {
    enable = true;
  };

  keymaps = [
    {
      key = "<leader>co";
      action = "<cmd>Lspsaga outline<CR>";
    }
    {
      key = "<leader>ca";
      action = "<cmd>Lspsaga code_action<CR>";
    }
    {
      key = "<leader>cd";
      action = "<cmd>Lspsaga show_line_diagnostics<CR>";
    }
    {
      key = "<leader>cD";
      action = "<cmd>Lspsaga peek_definition<CR>";
    }
    {
      key = "<leader>cr";
      action = "<cmd>Lspsaga rename<CR>";
    }
    {
    	key = "[d";
	action = "<cmd>Lspsaga diagnostic_jump_prev<CR>";
    }
    {
    	key = "]d";
	action = "<cmd>Lspsaga diagnostic_jump_next<CR>";
    }
  ];

  plugins.which-key.registrations = {
    "<leader>c" = "code+";
  };
}
