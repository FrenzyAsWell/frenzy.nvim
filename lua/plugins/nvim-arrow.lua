return {
	"otavioschwanck/arrow.nvim",

	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},

	config = function ()
		require('arrow').setup {
			show_icons = true,
			leader_key = ';',
			buffer_leader_key = 'm',
		}
	end
}
