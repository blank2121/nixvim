{ ... }:
{
  imports = [
    ./mini.nix
    ./lsp.nix
  ];

  plugins = {
    gitsigns.enable = true;
    ltex-extra.enable = true;
    oil.enable = true;
    # render-markdown.enable = true;
    markview.enable = true;
    twilight = {
      enable = true;
      autoLoad = true;
    };
    vim-css-color.enable = true;

    cmp.enable = true;
    cmp.autoEnableSources = true;
    cmp.settings.sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
    ];
    cmp-dictionary.enable = true;
    cmp-latex-symbols.enable = true;
  };
}
