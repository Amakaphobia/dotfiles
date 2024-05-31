return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			-- highlighting
			highlight = { enable = true },
			--enable indentation
			indent = { enable = true },
			-- autotag
			autotag = { enable = true },
			--insure those are here
			ensure_installed = {
				"json",
				"yaml",
				"xml",
				"javascript",
				"typescript",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"gitignore",
				"vimdoc",
				"java",
				"python",
				"kotlin",
				"org",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
