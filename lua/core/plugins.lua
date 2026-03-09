local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({
    	"git",
    	"clone",
    	"--filter=blob:none",
    	"https://github.com/folke/lazy.nvim.git",
    	"--branch=stable",
	lazyrepo,
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- vim.fn.stdpath("config")

require("lazy").setup {
	spec = {
		{ dir = vim.fn.stdpath("config") .. "/lua", import = "plugins" },

		-- "junegunn/fzf.vim",
		-- "junegunn/fzf",

		-- ### --

		"sainnhe/sonokai",
		"EdenEast/nightfox.nvim",
		"savq/melange-nvim",
		"sainnhe/everforest",
		"folke/tokyonight.nvim",
	},
}
