return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	flavour = "mocha",
	config = function()
		require("catppuccin").setup({
			transparent_background = true,

			--override colors
			color_overrides = {
				mocha = {
					rosewater = "#ffc0b9",
					flamingo = "#f5aba3",
					pink = "#f592d6",
					mauve = "#c0afff",
					red = "#ea746c",
					maroon = "#ff8595",
					peach = "#fa9a6d",
					yellow = "#ffe081",
					green = "#99d783",
					teal = "#47deb4",
					sky = "#00d5ed",
					sapphire = "#00dfce",
					blue = "#00baee",
					lavender = "#abbff3",
					text = "#cccccc",
					subtext1 = "#bbbbbb",
					subtext0 = "#aaaaaa",
					overlay2 = "#999999",
					overlay1 = "#888888",
					overlay0 = "#777777",
					surface2 = "#666666",
					surface1 = "#555555",
					surface0 = "#444444",
					base = "#202020",
					mantle = "#222222",
					crust = "#333333",
				},
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false, --because treesitter
			},

			--override highlights
			custom_highlights = function(colors)
				return {
					Comment = { fg = colors.teal },
				}
			end,
		})
		vim.cmd("colorscheme catppuccin")

		--setting the highlight
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#cbe7f2" })
	end,
}
