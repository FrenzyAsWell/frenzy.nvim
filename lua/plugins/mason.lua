return {
	"williamboman/mason.nvim",

	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
	},

	config = function ()
		local opts = { noremap = true, silent = true }
		vim.keymap.set('n', '<A-M>', '<Cmd>Mason<CR>', opts)
	end,
}
