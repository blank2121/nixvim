{ config, lib, pkgs, ... }:
{
 keymaps = [
 	{
	key = "L";
	action = "<cmd>BufferLineCycleNext<CR>";
	}
	{
	key = "H";
	action = "<cmd>BufferLineCyclePrev<CR>";
	}
	{
	key = "k";
	action = "gk";
	}
 ];
}
