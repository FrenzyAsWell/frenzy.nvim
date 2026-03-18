return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		'nvim-lua/plenary.nvim'
	},

	event = "VeryLazy",

	config = function () 
		local none_ls = require('null-ls')

		none_ls.setup
		{
			sources = {
				none_ls.builtins.formatting.clang_format,
			}

		}

		vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format, {})
	end,
}
