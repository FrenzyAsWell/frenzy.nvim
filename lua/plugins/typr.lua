return {
	"nvzone/typr",
	dependencies = {
		"nvzone/volt",
	},

	lazy = false,

	config = function ()
		vim.keymap.set('n', '<A-T>', '<cmd>Typr<cr>', { noremap = true, silent = true })
	end,
}
