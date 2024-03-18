{ config, lib, pkgs, ... }:
{
 keymaps = [
 	#buffers
 	{
	key = "L";
	action = "<cmd>BufferLineCycleNext<CR>";
	}
	{
	key = "H";
	action = "<cmd>BufferLineCyclePrev<CR>";
	}

	#moving around windows
	{
	key = "<C-h>";
	action = "<C-w>h";
	}
	{
	key = "<C-j>";
	action = "<C-w>j";
	}
	{
	key = "<C-k>";
	action = "<C-w>k";
	}
	{
	key = "<C-l>";
	action = "<C-w>l";
	}
	#splits
	{
	key = "<leader>-";
	action = "<C-w>s";
	}
	{
	key = "<leader>|";
	action = "<C-w>v";
	}
	#copy/paste
	{
	key = "Y";
	action = ''"+y'';
	}
	{
	key = "P";
	action = ''"+p'';
	}
 ];

 plugins.which-key.registrations = {
 	"<leader>-" = "split horizontally";
	"<leader>|" = "split vertically";
 };
}
