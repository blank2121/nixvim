{
  # Import all your configuration modules here
  imports = [
    ./plugins/plugins.nix

    # basic conf
    ./keys.nix
    ./options.nix
    ./globals.nix
  ];

  colorschemes.tokyonight.enable = true;

  clipboard.providers.wl-copy.enable = true;

  extraConfigLua = ''
    vim.g.mapleader = " "
    vim.g.maplocalleader = " "
  '';
}
