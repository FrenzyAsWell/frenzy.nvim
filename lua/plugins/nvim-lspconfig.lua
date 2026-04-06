return {
	"neovim/nvim-lspconfig",

	config = function()	
		require("mason").setup()

		require("mason-lspconfig").setup(
		{
			opts = {
				ensure_installed =
				{
					"termux_language_server",
				--
					"codelldb",
					"clang-format",
					"clangd",
					"bashls",
				-- 
					"dockerls",
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
					"pyright",
				--
					'nil',
				--	
					'texlab',
				--
					'qmlls'
				}
			}
		})

		local capabilities = require('cmp_nvim_lsp').default_capabilities()

		local custom_attach = function(client)
			print("LSP started.");
			require'completion'.on_attach(client)
			require'diagnostic'.on_attach(client)

			map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
			map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
			map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
			map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
			map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
			map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
			map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
			map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
			map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
			map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
			map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
			map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
			map('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
			map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
			map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
			map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
		end

		--require("lspconfig").clangd.setup { }
		--vim.lsp.config('clangd', { capabilities = capabilities })
		vim.lsp.config('*', { capabilities = capabilities })

		vim.lsp.enable('lua_ls')
		vim.lsp.enable('clangd')
		vim.lsp.enable('texlab')
		vim.lsp.enable('dockerls')
		vim.lsp.enable('cmake')
		vim.lsp.enable('rust_analyzer')
		vim.lsp.enable('biome')
		vim.lsp.enable('jsonls')
		vim.lsp.enable('pyright')
		vim.lsp.enable('bashls')
		vim.lsp.enable('nil_ls')
		vim.lsp.enable('qmlls')
		vim.lsp.enable('termux_language_server')
	end,
}
