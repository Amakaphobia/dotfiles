return{
    -- This makes it so we can easily restore a session after closing neovim.
    "rmagatti/auto-session",
    config = function()
        local auto_session = require("auto-session")

        auto_session.setup({
            auto_restore_enabled = false,
            auto_session_supress_dirs = {"~/", "~/Dev/", "~/Downloads/", "~/Documents", "~/Desktop"}
        })
        
        local keys = vim.keymap

        keys.set("n", "<leader>ar", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd"})
        keys.set("n", "<leader>as", "<cmd>SessionSave<CR>", { desc = "Save session for cwd"})

    end
}
