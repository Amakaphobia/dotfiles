return{
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local nvimtree = require("nvim-tree")

        --recommended settings from nvim-tree documentation
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        
        nvimtree.setup({
            view = {
                width = 35,
                relativenumber = true
            },

            -- change folder icons based on opened/closed 
            renderer = {
                indent_markers = {
                    enable = true,
                },
                icons = {
                    glyphs = {
                        folder = {
                            arrow_closed = "+",
                            arrow_open = "-",
                        },
                    },
                },
            },

            -- disable window picker for tree because of splits
            actions = {
                open_file = {
                    window_picker = {
                        enable = false,
                    },
                },
            },
            --filter = {custom = {},},
            git = {
                ignore = false,
            },
        })
        
        -- Keymaps
        local keys = vim.keymap

        keys.set("n", "<leader>nt", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle Fileexplorer"})
        keys.set("n", "<leader>nf", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle Fileexplorer on current file"})
        keys.set("n", "<leader>nc", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse Tree"})
        keys.set("n", "<leader>nr", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh Tree"})

    end
}
