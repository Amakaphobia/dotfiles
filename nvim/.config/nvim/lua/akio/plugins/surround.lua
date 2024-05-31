return {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = true,

    -- ys to enter surround mode
    -- i for adding surround
    -- d for removing
    -- motion like w or $
    -- character you want to surround the text with

}
