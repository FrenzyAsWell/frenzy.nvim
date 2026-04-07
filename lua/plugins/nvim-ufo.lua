return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async"
	},

	config = function ()
		local language_servers = vim.lsp.get_clients()
		for _, ls in ipairs(language_servers) do
			require('lspconfig')[ls].setup {
				capabilities = capabilities
			}
		end

		require('ufo').setup {
			provider_selector = function(bufnr, filetype, buftype)
				return {'treesitter', 'indent'}
			end
		}
	end,
}
