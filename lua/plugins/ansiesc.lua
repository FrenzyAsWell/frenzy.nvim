return {
	"Makaze/AnsiEsc",

	config = function ()
		vim.keymap.set( "n", "<A-c>",  "<Cmd>AnsiEsc<CR>", { noremap = true, silent = true })
	end
}
