return {
    "nvim-lualine/lualine.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        local config = require("lualine")
        local lazy_status = require("lazy.status")
        local customTheme = require("lualine.themes.dracula")
        
        --save the waifu
        customTheme.normal.c.bg = nil
        customTheme.inactive.c.bg = nil
        customTheme.visual.c.bg = nil           
        customTheme.replace.c.bg = nil           
        customTheme.insert.c.bg = nil           
        customTheme.command.c.bg = nil           
        -- modify insert green
        customTheme.insert.a.bg = "#00a21a"
        --modify normal blue
        customTheme.normal.a.bg = "#0ec5d8"
        config.setup({
            options = {
                theme = customTheme
            },
            sections = {
                lualine_x = {
                    {-- add the lazynvim updatechecker
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64"},
                    },
                    { "encoding" },
                    { "fileformat" },
                    { "filetype" },
                },
            },
        })
    end
}
