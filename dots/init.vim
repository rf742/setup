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

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

" MARKDOWN snippets
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap <leader>n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap <leader>b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap <leader>s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap <leader>e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap <leader>h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap <leader>i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap <leader>a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap <leader>1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap <leader>2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap <leader>3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap <leader>l --------<Enter>
	autocmd Filetype markdown,rmd inoremap <leader>r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype markdown,rmd inoremap <leader>p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype markdown,rmd inoremap <leader>c ```<cr>```<cr><cr><esc>2kO

" C++ snippets
	autocmd Filetype c,cpp inoremap <leader>i #include<Space><><++><esc>ba
