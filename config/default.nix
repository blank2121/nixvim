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
        srcery-vim
        telescope-symbols-nvim
        tokyonight-nvim
    ];

    colorschemes.base16.enable = true;
    colorscheme = "base16-rose-pine";

    globals = {
        mapleader = " ";
        maplocalleader = " ";
    };

    opts = {
        relativenumber = true;
        number = true;

        tabstop = 4;
        shiftwidth = 4;
        expandtab = true;
        autoindent = true;

        wrap = false;

        ignorecase = true;
        smartcase = true;

        cursorline = false;

        termguicolors = true;
        background = "dark";
        signcolumn = "yes";

        backspace = "indent,eol,start";

        splitright = true;
        splitbelow = true;
    };
}
