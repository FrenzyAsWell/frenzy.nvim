require("vimtex").setup()

filetype plugin indent on

let g:vimtex_view_method = 'zathura',
let g:vimtex_compiler_latexmk_engines = {
	_ = "-lualatex"
}

let g:vimtex_view_general_viewer = 'okular',
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex',

let g:vimtex_compiler_method = 'latexrun'
