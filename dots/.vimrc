" Some basics
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
	set ruler

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

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Split right and below
	set splitbelow splitright
