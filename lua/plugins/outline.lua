return {
	"hedyhli/outline.nvim",

	config = function() 
		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		require('outline').setup 
		{
			outline_window = {
				position = 'right',
				width = '30',
			},
		}

		map('n', '<A-o>', '<cmd>Outline<CR>', opts )
	end,
}
