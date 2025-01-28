{ ... }:
{
  plugins.lsp = {
    enable = true;
    servers = {
      html.enable = true;
      jsonls.enable = true;

      ltex.enable = true;
      marksman.enable = true;
      nixd.enable = true;

      taplo.enable = true;
      texlab.enable = true;
    };
  };

  plugins.lspkind.enable = true;
  plugins.lspsaga.enable = true;
  plugins.luasnip.enable = true;
  plugins.telescope.enable = true;
}
