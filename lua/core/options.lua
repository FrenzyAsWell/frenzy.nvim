local o = vim.opt
local og = vim.g

og.mapleader = " "
og.loaded_netrw = 1
og.loaded_netrwPlugin = 1
og.terminal_emulator='tmux'

o.relativenumber = true
o.number = true

o.shiftwidth = 4
o.tabstop = 4

vim.keymap.set('n', '<C-o>', ':Oil<CR>', { noremap = true, silent = true })
--###--
vim.keymap.set("n", "=", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]])
vim.keymap.set("n", "+", [[<cmd>horizontal resize +2<cr>]])
vim.keymap.set("n", "_", [[<cmd>horizontal resize -2<cr>]])

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
