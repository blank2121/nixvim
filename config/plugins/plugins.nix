{
  imports = [
    ./buffer.nix
    ./lsp.nix
    ./lspsaga.nix
    ./modes.nix
    ./neo-tree.nix
    ./statusline.nix
    ./telescope.nix
  ];
  plugins = {
    emmet.enable = true;
    gitsigns.enable = true;
    ltex-extra.enable = true;
    noice.enable = true;
    notify.enable = true;
    nvim-autopairs.enable = true;
    transparent.enable = true;
    treesitter.enable = true;
    which-key.enable = true;
  };
}
