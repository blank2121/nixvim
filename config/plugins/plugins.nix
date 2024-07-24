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
    crates-nvim.enable = true;
    emmet.enable = true;
    gitsigns.enable = true;
    ltex-extra.enable = true;
    noice.enable = true;
    notify.enable = true;
    nvim-autopairs.enable = true;
    transparent.enable = true;
    treesitter.enable = true;
    twilight.enable = true;
    virt-column.enable = true;
    vim-css-color.enable = true;
    which-key.enable = true;
  };
}
