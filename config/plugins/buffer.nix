{ config, lib, pkgs, ... }:
{
  plugins.bufferline.enable = true;
  keymaps = [
    {
      key = "<leader>bd";
      action = "<cmd>bdelete<CR>";
    }
    {
      key = "<leader>bl";
      action = "<cmd>BufferLineCloseLeft<CR>";
    }
    {
      key = "<leader>br";
      action = "<cmd>BufferLineCloseRight<CR>";
    }
  ];
  reg = lib.foldl'
    (kv: acc: acc // {
      kv.key = kv.action;
    })
    { }
    config.keymaps;
}
