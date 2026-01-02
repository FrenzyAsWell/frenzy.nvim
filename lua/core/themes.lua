--vim.opt.termguicolors = true
vim.o.background = "dark"

local theme_number = 1
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

local isThemeLoaded = pcall(vim.cmd, "colorscheme " .. themes[theme_number])
if isThemeLoaded ~= true then
	-- print("Can't load theme " .. themes[theme_number])
end
