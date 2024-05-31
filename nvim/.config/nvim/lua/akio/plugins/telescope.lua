return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
    },
    config = function()
        local telescope = require ("telescope")
        local actions   = require ("telescope.actions")
        
        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    },
                },
            },
        })

        --keymaps
        local keys = vim.keymap
        keys.set("n", "<leader>sf", "<cmd>Telescope find_files<CR>", { desc = "find files" })
        keys.set("n", "<leader>sr", "<cmd>Telescope oldfiles<CR>", { desc = "recent files" })
        keys.set("n", "<leader>sg", "<cmd>Telescope live_grep<CR>", { desc = "Find grep" })
        keys.set("n", "<leader>sc", "<cmd>Telescope grep_string<CR>", { desc = "Find String under Cursor" })
        keys.set("n", "<leader>st", "<cmd>TodoTelescope<CR>", { desc = "Find ToDos" })
    end,
}
