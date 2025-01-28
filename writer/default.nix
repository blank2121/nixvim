{ pkgs, ... }:
{
  imports = [
    ./keys.nix
    ./plugins
  ];

  clipboard.providers.wl-copy.enable = true;

  extraPlugins = with pkgs.vimPlugins; [
    awesome-vim-colorschemes
    catppuccin-nvim
    gruvbox
    nightfox-nvim
    oceanic-material
    rose-pine
    telescope-symbols-nvim
    tokyonight-nvim
  ];

  colorschemes.base16.enable = true;
  colorscheme = "base16-rose-pine-dawn";

  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  opts = {
    # relativenumber = true;
    # number = true;

    tabstop = 4;
    shiftwidth = 4;
    expandtab = true;
    autoindent = true;

    wrap = true;
    wrapmargin = 4;

    ignorecase = true;
    smartcase = true;

    cursorline = false;

    termguicolors = true;
    background = "light";
    signcolumn = "yes";

    backspace = "indent,eol,start";

    splitright = true;
    splitbelow = true;
  };
}
