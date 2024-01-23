{
  imports = [
    ./buffer.nix
    ./lsp.nix
    ./neo-tree.nix
    ./statusline.nix
    ./telescope.nix
  ];
  plugins = {
    emmet.enable = true;
    gitsigns.enable = true;
    luasnip.enable = true;
    noice.enable = true;
    notify.enable = true;
    treesitter.enable = true;
    nvim-autopairs.enable = true;
    which-key.enable = true;
  };
}
