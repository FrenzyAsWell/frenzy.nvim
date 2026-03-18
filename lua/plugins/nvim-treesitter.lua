return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require('nvim-treesitter').install {
			'html',
			'xml',

			'markdown',
			'html',
			'latex',
			'typst',
			'yaml',
		}
	end,
}
