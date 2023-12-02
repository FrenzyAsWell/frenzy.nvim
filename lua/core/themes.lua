--vim.opt.termguicolors = true
vim.o.background = "dark"

local themes =
{
-- (1) -- 
	"sonokai",
-- (2-8) --
	"nightfox",
	"dayfox",
	"dawnfox",
	"duskfox" ,
	"nordfox",
	"terafox",
	"carbonfox",
-- (9) --
	"melange",
-- (10) --
	"everforest",
-- (11-15) --
	"tokyonight",
	"tokyonight-night",
	"tokyonight-storm",
	"tokyonight-day",
	"tokyonight-moon",
}

pcall(vim.cmd, "colorscheme " .. themes[6])
