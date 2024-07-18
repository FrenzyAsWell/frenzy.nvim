local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  	"jiangmiao/auto-pairs",
	"preservim/nerdtree",
  	"preservim/tagbar",
  	"junegunn/fzf.vim",
  	"junegunn/fzf",

	-- ### --

	"sainnhe/sonokai",
	"EdenEast/nightfox.nvim",
	"savq/melange-nvim",
	"sainnhe/everforest",
	"folke/tokyonight.nvim",

	-- ### --

	{
		"RRethy/vim-hexokinase", 
		build = "make hexokinase",
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies =
		{
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugin_config.nvim-tree")
		end,
	},

	{
		'nvim-lualine/lualine.nvim',
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("plugin_config.lualine")
		end,
	},

	{
		"hrsh7th/cmp-nvim-lsp",
		dependencies =
		{
			"hrsh7th/nvim-cmp",
			"saadparwaiz1/cmp_luasnip",
			{
				"L3MON4D3/LuaSnip",
				dependencies =
				{
					"rafamadriz/friendly-snippets"
				},
			},
		},
		config = function()
			require("plugin_config.nvim-cmp")
		end,
	},

  	{
		"williamboman/mason.nvim",

		dependencies =
		{
			"williamboman/mason-lspconfig.nvim",

			{
				"neovim/nvim-lspconfig",
				config = function()
					require("plugin_config.lsp_config")
				end,
			},

			{
				"mfussenegger/nvim-dap",
				dependencies =
				{
					"jay-babu/mason-nvim-dap.nvim",
						{
							"rcarriga/nvim-dap-ui",
							dependencies = 
							{
								"nvim-neotest/nvim-nio"
							},
						},
					
				},
				config = function()
					require("plugin_config.dap_config")
				end,
			},
		},
	},
})
