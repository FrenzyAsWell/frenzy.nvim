local opts = { noremap = true, silent = true }
local ni = {"n", "i"}

require("markview").setup {
	vim.keymap.set( ni, "<A-m>t",  "<Cmd>Markview toggle<CR>", opts),
	vim.keymap.set( ni, "<A-m>s",  "<Cmd>Markview splitToggle<CR>", opts)
}
