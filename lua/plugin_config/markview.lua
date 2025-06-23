local opts = { noremap = true, silent = true }
local ni = {"n", "i"}

require("markview").setup {
	vim.keymap.set( ni, "<C-n>g",  "<Cmd>Markview Toggle<CR>", opts),
	vim.keymap.set( ni, "<C-n>h",  "<Cmd>Markview HybridToggle<CR>", opts),
	vim.keymap.set( ni, "<C-n>p",  "<Cmd>Markview toggle<CR>", opts),
	vim.keymap.set( ni, "<C-n>bf", "<Cmd>Markview hybridToggle<CR>", opts),
	vim.keymap.set( ni, "<C-n>s",  "<Cmd>Markview splitToggle<CR>", opts)
}
