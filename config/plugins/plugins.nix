{
  imports = [
    ./lsp.nix
    ./neo-tree.nix
    ./telescope.nix
  ];
  plugins = {
    bufferline.enable = true;
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
