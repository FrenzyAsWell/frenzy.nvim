return {
	"stevearc/conform.nvim",
	opts = {},

	config = function ()
		require("conform").setup {
			formatters_by_ft = {
				latex = { "latexindent" },
				json = { "jq" }
			},

			formatters = {
				latexindent = {
					command = "latexindent",
				},

				jq = {
					command = "/usr/bin/jq"
				}
			},
		}

		local command_name = "ConformFormat"

		vim.api.nvim_create_user_command(command_name, function(args)
			local range = nil
			if args.count ~= -1 then
				local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
				range = {
					start = { args.line1, 0 },
					["end"] = { args.line2, end_line:len() },
				}
			end
			require("conform").format({ async = true, lsp_format = "fallback", range = range })
		end, { range = true })

		vim.keymap.set('n', '<A-f>', '<Cmd>' .. command_name .. '<CR>', opts)
	end
}
