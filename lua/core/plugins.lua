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

require("lazy").setup {
	spec = {
		-- "junegunn/fzf.vim",
		-- "junegunn/fzf",

		-- ### --

		"sainnhe/sonokai",
		"EdenEast/nightfox.nvim",
		"savq/melange-nvim",
		"sainnhe/everforest",
		"folke/tokyonight.nvim",

		-- ### --
		{
			'windwp/nvim-autopairs',
			event = "InsertEnter",
			config = true
		},

		{
			"lervag/vimtex",
			lazy = false,

			init = function ()
				vim.g.vimtex_compiler_latexmk_engines = {
					_ = "-lualatex"
				}
			end,
			--config = function() require("vimtex").setup {} end,
		},

		{
			"hedyhli/outline.nvim",
			config = function() require("outline").setup {} end,
		},

		{
			"RRethy/vim-hexokinase",
		},

		{
			"OXY2DEV/markview.nvim",
			dependencies = {
				"saghen/blink.cmp",
			},

			enabled = true,
			lazy = false,
			config = function() require("plugin_config.markview") end,
		},

		{
			"iamcco/markdown-preview.nvim",
			enabled = false,

			ft = { "markdown" },
			cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
			build = function(plugin) vim.cmd("!cd " .. plugin.dir .. " && cd app && npx --yes yarn install") end,
			opts = {
				mkdp_filetypes = { "markdown" },
			},
		},

		{
			'stevearc/oil.nvim',
			config  = function() require("plugin_config.oil") end,
		},

		{
			"nvim-tree/nvim-tree.lua",
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},

			config  = function() require("plugin_config.nvim-tree") end,
		},

		{
			'nvim-lualine/lualine.nvim',
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},

			config = function() require("plugin_config.lualine") end,
		},

		{
			"nvimtools/none-ls.nvim",
			dependencies = {
				'nvim-lua/plenary.nvim'
			},

			event = "VeryLazy",
			config = function () require("plugin_config.null_ls") end
		},

		{
			'romgrk/barbar.nvim',
			dependencies = {
				'lewis6991/gitsigns.nvim', -- 	  | OPTIONAL: for git status
				'nvim-tree/nvim-web-devicons', -- | OPTIONAL: for file icons
			},

			init = function() vim.g.barbar_auto_setup = false end,
			config = function() require("plugin_config.barbar") end,
		},

		{
			"hrsh7th/cmp-nvim-lsp",
			dependencies = {
				"hrsh7th/nvim-cmp",
				"saadparwaiz1/cmp_luasnip",
				{
					"L3MON4D3/LuaSnip",
					dependencies = {
						"rafamadriz/friendly-snippets"
					},
				},
			},

			config = function() require("plugin_config.nvim-cmp") end,
		},

		{
			"williamboman/mason.nvim",
			dependencies = {
				"williamboman/mason-lspconfig.nvim",
				{
					"neovim/nvim-lspconfig",
					-- config = function()	require("plugin_config.lsp_config") end,
				},
				{
					"mfussenegger/nvim-dap",
					dependencies = {
						"jay-babu/mason-nvim-dap.nvim",
							{
								"rcarriga/nvim-dap-ui",
								dependencies = {
									"nvim-neotest/nvim-nio"
								},
							},
					},

					config = function() require("plugin_config.dap_config") end,
				},
			},
		},
	},
}
