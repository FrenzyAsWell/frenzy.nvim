return {
	"lervag/vimtex",
	lazy = false,

	init = function ()
		vim.g.vimtex_compiler_latexmk_engines = {
			_ = "-lualatex"
		}

		vim.g.vimtex_view_automatic = 0
		vim.g.vimtex_view_method = "general"
		vim.g.vimtex_view_general_viewer = 'okular'
	end,
	--config = function() require("vimtex").setup {} end,
}
