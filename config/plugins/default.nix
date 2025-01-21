{ ... }:
{
  imports = [
    ./mini.nix
    ./lsp.nix
  ];
  
  plugins = {
    crates.enable = true;
    emmet.enable = true;
    gitsigns.enable = true;
    ltex-extra.enable = true;
    render-markdown.enable = true;
    twilight.enable = true;
    vim-css-color.enable = true;
  };

  plugins.oil = {
    enable = true;
  };
}
