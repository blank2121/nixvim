{ ... }:
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
      nimls.enable = true;
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

      zls.enable = true;
    };
  };
  
  plugins.zig.enable = true;

  plugins.lsp-format.enable = true;
  plugins.lspkind.enable = true;
  plugins.lspsaga.enable = true;
  plugins.luasnip.enable = true;
  plugins.telescope.enable = true;
  plugins.treesitter.enable = true; 
}
