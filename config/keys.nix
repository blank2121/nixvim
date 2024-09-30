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
