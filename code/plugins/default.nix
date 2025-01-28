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
    oil.enable = true;
    # render-markdown.enable = true;
    markview.enable = true;
    twilight.enable = true;
    vim-css-color.enable = true;

    cmp = {
        enable = true;
        autoEnableSources = true;
        # settings.sources = [
        #   { name = "buffer"; }
        #   { name = "dictionary"; }
        #   { name = "latex_symbols"; }
        #   { name = "nvim-lsp"; }
        #   { name = "path"; }
        # ];
    };
    cmp-buffer.enable = true;
    cmp-dictionary.enable = true;
    cmp-latex-symbols.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true; 
  };
}
