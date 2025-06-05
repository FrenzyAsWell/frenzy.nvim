local o = vim.opt
local og = vim.g

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

og.mapleader = " "
og.loaded_netrw = 1
og.loaded_netrwPlugin = 1
og.terminal_emulator='tmux'

o.relativenumber = true
o.number = true

o.shiftwidth = 4
o.tabstop = 4

map('n', "<C-o>", ":Oil<CR>", opts)
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
