return {
	"lervag/vimtex",
	lazy = false,

	init = function ()
		vim.g.vimtex_compiler_latexmk_engines = {
			_ = "-lualatex"
		}
	end,
	--config = function() require("vimtex").setup {} end,
}
