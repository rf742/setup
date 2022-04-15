execute pathogen#infect()
" Some basics
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber

" Read files correctly
	autocmd BufRead,BufNewFile *.ms set filetype=groff

" Open file navigator in vertical split 
	map <leader>f :Vex<enter>

" Open python command to get chemical structure of word under cursor
 	map <leader>c yiw:!getstruct<space><C-r>"<enter>

" Get ready to open file in new tab
	map <leader>t :tabe<space>

" shortcuts for saving, quitting and compiling
	map <leader>q :q<enter>
	map <leader>w :w<enter>
	map <leader>m :!make


" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Split right and below
	set splitbelow splitright

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

