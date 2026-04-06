return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,

	config = function()
		require('nvim-treesitter').install {
			'html',
			'xml',
			'markdown',
			'html',
			'latex',
			'typst',
			'yaml',
			'qmljs'
		}
	end,
}
