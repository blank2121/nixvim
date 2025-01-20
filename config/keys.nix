{ ... }:
let 
    buffers = [];
    leaders = [
        { key = "<leader>f"; action = "<cmd>lua MiniFiles.open()<CR>"; options.desc = "Open file picker"; }
        { key = "<leader><Space>"; action = "<cmd>lua MiniFiles.open()<CR>"; options.desc = "Open file picker"; }
        { key = "<leader>b"; action = "<cmd>Pick buffers<CR>"; options.desc = "Open buffer picker"; }
        { key = "<leader>j"; action = "<cmd>Telescope jumplist<CR>"; options.desc = "Open jumplist picker"; }
        { key = "<leader>s"; action = "<cmd>Telescope lsp_document_symbols<CR>"; options.desc = "Open symbol picker"; }
        { key = "<leader>d"; action = "<cmd>Telescope diagnostics<CR>"; options.desc = "Open diagostic picker"; }
        { key = "<leader>D"; action = "<cmd>Telescope show_workspace_diagnostics<CR>"; options.desc = "Open workspace diagostic picker"; }
        { key = "<leader>a"; action = "<cmd>Lspsaga code_action<CR>"; options.desc = "Perform code action"; }
        { key = "<leader>w"; action = "<cmd>write<CR>"; options.desc = ":write []"; }
        { key = "<leader>y"; action = "y"; options.desc = "Yank selections"; }
        { key = "<leader>p"; action = "p"; options.desc = "Paste"; }
        { key = "<leader>P"; action = "\"+p"; options.desc = "Paste from clipboard"; }
        { key = "<leader>?"; action = "<cmd>Telescope keymaps<CR>"; options.desc = "Open command pallete"; }
        { key = "<leader>/"; action = "<cmd>Telescope live_grep<CR>"; options.desc = "Global search in workspace folder"; }
        { key = "<leader>k"; action = "<cmd>Lspsaga hover_doc<CR>"; options.desc = "Show docs for item under cursor"; }
        { key = "<leader>r"; action = "<cmd>Lspsaga rename<CR>"; options.desc = "Rename symbol"; }
    ];
    lsps = [];
    movements = [
        { key = "gg"; action = "gg"; options.desc = "Goto file start"; }
        { key = "ge"; action = "G"; options.desc = "Goto file bottom"; }
        { key = "gf"; action = "gf"; options.desc = "Goto files"; }
        { key = "gh"; action = "0"; options.desc = "Goto line start"; }
        { key = "gl"; action = "$"; options.desc = "Goto line end"; }
        { key = "gs"; action = "_"; options.desc = "Goto first non-blank in line"; }
        { key = "gd"; action = "<cmd>Lspsaga goto_definition<CR>"; options.desc = "Goto definition"; } 
        { key = "gi"; action = "<cmd>Telescope lsp_implementations<CR>"; options.desc = "Goto implementations"; }
        { key = "gr"; action = "<cmd>Telescope lsp_references<CR>"; options.desc = "Goto references"; }
    ];
    windows = [
    ];
in {
    keymaps =  buffers ++ leaders ++ lsps ++ movements ++ windows;
}

