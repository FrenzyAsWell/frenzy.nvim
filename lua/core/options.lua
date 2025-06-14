local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ","
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
		local iwinMainID = vim.api.nvim_get_current_win()

		pcall(vim.cmd, "NvimTreeOpen")
		pcall(vim.cmd, "Outline")

		if iwinMainID ~= nil then
			vim.api.nvim_set_current_win(iwinMainID)
		end
	end,
})

--###--
map('n', "=", "[[<cmd>vertical resize +5<cr>]]", opts)
map('n', "-", "[[<cmd>vertical resize -5<cr>]]", opts)
map('n', "+", "[[<cmd>horizontal resize +2<cr>]]", opts)
map('n', "_", "[[<cmd>horizontal resize -2<cr>]]", opts)

map('n', "<C-h>", "<cmd>lua vim.cmd('wincmd h')<cr>", opts)
map('n', "<C-l>", "<cmd>lua vim.cmd('wincmd l')<cr>", opts)
map('n', "<C-j>", "<cmd>lua vim.cmd('wincmd j')<cr>", opts)
map('n', "<C-k>", "<cmd>lua vim.cmd('wincmd k')<cr>", opts)

--- Movement in Insert Mode

map('i', "<C-h>", "<Left>", opts)
map('i', "<C-l>", "<Right>", opts)
map('i', "<C-j>", "<Down>", opts)
map('i', "<C-k>", "<Up>", opts)

map('n', "<C-z>", "", opts)
