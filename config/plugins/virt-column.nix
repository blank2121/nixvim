{
  config,
  lib,
  pkgs,
  ...
}:

{
  plugins = {
    virt-column = {
      enable = true;
      settings = {
        char = "┃";
        enabled = true;
        exclude = {
          buftypes = [
            "nofile"
            "quickfix"
            "terminal"
            "prompt"
          ];
          filetypes = [
            "lspinfo"
            "packer"
            "checkhealth"
            "help"
            "man"
            "TelescopePrompt"
            "TelescopeResults"
          ];
        };
        highlight = "NonText";
        virtcolumn = "┃";
      };
    };
  };
}
