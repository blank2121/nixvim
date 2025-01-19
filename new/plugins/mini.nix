{ ... }:
{
  plugins.mini = {
    enable = true;
    autoLoad = true;
    mockDevIcons = true;
    modules = {
      # --- text editing ---
    
      ai = {
        n_lines = 50;
        search_method = "cover_or_next";
      };
      comment = {
        mappings = {
            comment = "gc";
            comment_line = "gcc";
            comment_visual = "gc";
            textobject = "gc";
        };
      };    
      completion = {
        delay = {
            completion = 100; 
            info = 100;
            signature = 50;
        };

        window = {
            info = {
                height = 25;
                width = 80;
                border = "none";
            };
            signature = {
                height = 25;
                width = 80;
                border = 'none';
            };
        };

        lsp_completion = {
            source_func = "hompletefunc";
            auto_setup = true;
            process_items = null; # TODO: look up video for this
        };

        fallback_action = null; # TODO: loop up video for this 

        mappings = {
            force_twostep = "<C-Space>"; 
            force_fallback = "<A-Space>";
        };

        set_vim_settings = true;
      };

      move = {
        mappings = {
            left = "<D-h>";
            right = "<D-l>";
            up = "<D-k>";
            down = "<D-j>";

            line_left = "<D-h>";
            line_right = "<D-l>";
            line_up = "<D-k>";
            line_down = "<D-j>";
        };
        options = {
            reindent_linewise = true;
        };
      };
      pairs = {}; # auto implemented???
      surround = {
        n_lines = 20;
        search_method = "cover_or_next";
        mappings = {
            add = "sa";
            delete = "sd";
            find = "sf";
            find_left = "sF";
            highlight = "sh";
            replace = "sr";
            update_n_lines = "sn";
        };
      };

      # --- workflow ---
      
      # basicss = {}; # maybe
      bracketed = {
        buffer = {
            suffix = 'b';
            options = {};
        };
        comment = {
            suffix = 'c';
            options = {};
        };
        conflict = {
            suffix = 'x';
            options = {};
        };
        diagnostic = {
            suffix = 'd';
            options = {};
        };
        file = {
            suffix = 'f';
            options = {};
        };
        indent = {
            suffix = 'i';
            options = {};
        };
        jump = {
            suffix = 'j';
            options = {};
        };
        location = {
            suffix = 'l';
            options = {};
        };
        oldfile = {
            suffix = 'o';
            options = {};
        };
        quickfix = {
            suffix = 'q';
            options = {};
        };
        treesitter = {
            suffix = 't';
            options = {};
        };
        undo = {
            suffix = 'u';
            options = {};
        };
        window = {
            suffix = 'w';
            options = {};
        };
        yank = {
            suffix = 'y';
            options = {};
        };
      };
      clue = {
        triggers = {
            # Leader triggers
            { mode = "n"; keys = "<Leader>" };
            { mode = "x"; keys = "<Leader>" };

            #Built-in completion
            { mode = "i"; keys = "<C-x>" };

            # `g` key
            { mode = "n"; keys = "g" };
            { mode = "x"; keys = "g" };

            # Marks
            { mode = "n"; keys = "'" };
            { mode = "n"; keys = "`" };
            { mode = "x"; keys = "'" };
            { mode = "x"; keys = "`" };

            # Registers
            { mode = "n"; keys = """ };
            { mode = "x"; keys = """ };
            { mode = "i"; keys = "<C-r>" };
            { mode = "c"; keys = "<C-r>" };

            # Window commands
            { mode = "n"; keys = "<C-w>" };

            # `z` key
            { mode = "n"; keys = "z" };
            { mode = "x"; keys = "z" };
        };
        # also use clues = {}; in docs but idk how in nix
      };
      # extra = {}; # maybe
      files = {
        content = {
            filter = null;
            prefix = null;
            sort = null;
        };

        mappings = {
            close = "q";
            go_in = "l";
            go_in_plus = "L";
            go_out = "h";
            go_out_plus = "H";
            mark_goto = "'";
            mark_set = "m";
            reset = "<BS>";
            reveal_cwd = "@";
            show_help = "g?";
            synchronize = "=";
            trim_left = "<";
            trim_right = ">";
        };

        options = {
            permanent_delete = true;
            use_as_default_explorer = true;
        };

        windows = {
            max_number = 25; 
            preview = false;
            width_focus = 50;
            width_nofocus = 15;
            width_preview = 25;
        };
      };
      git = {}; # NOT YET
      jump = {
        mappings = {
            forward = "f";
            backward = "F";
            forward_till = "t"; 
            backward_till = "T"; 
            repeat_jump = ";";
        };

        delay = {
            highlight = 250;
            idle_stop = 10000000;
        };

        silent = false;
      };
      pick = {}; # auto implemented???

      # --- appearence ---

      cursorword = {
        delay = 100;
      };
      icons = {}; # auto implemented??? 
      indentscope = {}; # auto implemented???
      statusline = {}; # auto implemented???
      tabline = {}; # auto implemented???

      # --- other ---
      
      fuzzy = {}; # auto implemented???
    };
  };
}
