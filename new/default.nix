{ pkgs, ... }:
{

    imports = [
        ./keys.nix
        ./plugins
    ];


    clipboard.providers.wl-copy.enable = true;

    colorschemes.base16.enable = true;
    colorscheme = "rose-pine-moon";

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
