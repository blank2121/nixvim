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
        settings = {
            sources = [
              { name = "buffer"; }
              { name = "dictionary"; }
              { name = "latex_symbols"; }
              { name = "nvim_lsp"; }
              { name = "path"; }
            ];
            mapping = {
              "<C-Space>" = "cmp.mapping.complete()";
              "<C-d>" = "cmp.mapping.scroll_docs(-4)";
              "<C-e>" = "cmp.mapping.close()";
              "<C-f>" = "cmp.mapping.scroll_docs(4)";
              "<CR>" = "cmp.mapping.confirm({ select = true })";
              "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
              "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
            };
        };
    };
    
    cmp-buffer.enable = true;
    cmp-dictionary.enable = true;
    cmp-latex-symbols.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true; 
  };
}
