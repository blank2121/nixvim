{
  imports = [
    ./buffer.nix
    ./lsp.nix
    ./lspsaga.nix
    ./neo-tree.nix
    ./statusline.nix
    ./telescope.nix
    ./virt-column.nix
  ];
  plugins = {
    # obsidian.enable = true;
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
    vim-css-color.enable = true;
    which-key.enable = true;
  };
}
