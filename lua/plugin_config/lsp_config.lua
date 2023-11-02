require("mason").setup({
	opts =
	{
		"codelldb",
		"clangd-format",
		"clangd",
	}
})
require("mason-lspconfig").setup(
{
	ensure_installed =
	{
		"lua_ls",
		"cmake",
		"rust_analyzer",
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
