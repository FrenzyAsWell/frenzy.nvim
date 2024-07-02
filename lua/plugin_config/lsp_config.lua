require("mason").setup({
	opts =
	{
		"codelldb",
		"clangd-format",
		"clangd",
	}
})
--[[
require("mason-lspconfig").setup(
{
	ensure_installed =
	{
		"bashls",
		--
		"jsonls",
		--
		"biome",
		--
		"lua_ls",
		--
		"cmake",
		--
		"rust_analyzer",
		--
		"pyre",
		"pyright",
		"pylyzer",
		"sourcery",
		"ruff_lsp",
		"jedi_language_server",
		"pylsp",
	}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup
{
	capabilities = capabilities,
}
require("lspconfig").clangd.setup {}
require("lspconfig").cmake.setup {}
require("lspconfig").rust_analyzer.setup {}
require("lspconfig").biome.setup {}
require("lspconfig").jsonls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").bashls.setup {}
--require("lspconfig").pyre.setup {}
--]]
