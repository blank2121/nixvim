{ config, lib, pkgs, ... }:
{

 keymaps = [
 	{
	key = "<leader>mt";
	action = "<cmd>colorscheme catppuccin-mocha<CR>";
	}
	{
	key = "<leader>mc";
	action = "<cmd>colorscheme dogrun<CR>";
	}
	{
	key = "<leader>mw";
	action = "<cmd>colorscheme oceanic_material<CR>";
	}
];

  plugins.which-key.registrations = {
    "<leader>m" = "Writing modes";
    "<leader>mt" = "LaTeX mode";
    "<leader>mc" = "Coding mode";
    "<leader>mw" = "Writin mode";
  };
}
