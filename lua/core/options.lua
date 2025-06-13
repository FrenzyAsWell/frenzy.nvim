local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.terminal_emulator='tmux'

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

--###--

vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("NvimTreeOpen")
		vim.cmd("Outline")
	end,
})

--###--
map('n', "=", "[[<cmd>vertical resize +5<cr>]]", opts)
map('n', "-", "[[<cmd>vertical resize -5<cr>]]", opts)
map('n', "+", "[[<cmd>horizontal resize +2<cr>]]", opts)
map('n', "_", "[[<cmd>horizontal resize -2<cr>]]", opts)

map('n', "<C-h>", "<C-w>h", opts)
map('n', "<C-l>", "<C-w>l", opts)
map('n', "<C-j>", "<C-w>j", opts)
map('n', "<C-k>", "<C-w>k", opts)

--- Movement in Insert Mode

map('i', "<C-h>", "<Left>", opts)
map('i', "<C-l>", "<Right>", opts)
map('i', "<C-j>", "<Down>", opts)
map('i', "<C-k>", "<Up>", opts)

map('n', "<C-z>", "", opts)
