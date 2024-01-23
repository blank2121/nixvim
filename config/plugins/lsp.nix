{
  plugins.lsp = {
    enable = true;
    servers = {
      rust-analyzer.enable = true;
    };
  };


  plugins.nvim-cmp = {
    enable = true;
    autoEnableSources = true;
    sources = [
      { name = "nvim_lsp"; }
      { name = "path"; }
      { name = "buffer"; }
    ];
    mapping = {
      "<C-Space>" = "cmp.mapping.complete()";
      "<C-d>" = "cmp.mapping.scroll_docs(-4)";
      "<C-e>" = "cmp.mapping.close()";
      "<C-f>" = "cmp.mapping.scroll_docs(4)";
      "<CR>" = "cmp.mapping.confirm({ select = true })";
      "<S-Tab>" = {
        action = "cmp.mapping.select_prev_item()";
        modes = [
          "i"
          "s"
        ];
      };
      "<Tab>" = {
        action = "cmp.mapping.select_next_item()";
        modes = [
          "i"
          "s"
        ];
      };
    };
  };

  plugins.lspsaga = {
    enable = true;
  };

  plugins.lspkind.enable = true;
}
