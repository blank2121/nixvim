{
  plugins.lsp = {
    enable = true;
    servers = {
      astro.enable = true;
      cssls.enable = true;
      emmet_ls.enable = true;

      hls.enable = true;
      hls.installGhc = true;

      html.enable = true;
      jsonls.enable = true;

      julials.enable = true;
      julials.package = null;

      ltex.enable = true;
      lua_ls.enable = true;
      marksman.enable = true;
      nixd.enable = true;
      pyright.enable = true;

      rust_analyzer.enable = true;
      rust_analyzer.installCargo = true;
      rust_analyzer.installRustc = true;

      svelte.enable = true;
      tailwindcss.enable = true;
      taplo.enable = true;
      texlab.enable = true;

      ts_ls.enable = true;
    };
  };

  plugins.lspkind.enable = true;
  plugins.cmp-latex-symbols.enable = true;
  plugins.luasnip.enable = true;
  plugins.cmp-nvim-lsp.enable = true;

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "path"; }
        { name = "buffer"; }
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

      snippet.expand = ''
        function(args)
          require("luasnip").lsp_expand(args.body)
        end
      '';

    };
  };
}
