local opts = { noremap = true, silent = true}

require("vim-hexokinase").setup {
	vim.keymap.set('n', '<he>', '[[<cmd>HexokinaseToggle<cr>]]', opts),
}

