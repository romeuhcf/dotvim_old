execute pathogen#infect()
filetype plugin indent on
set nocompatible
set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Turn on line numbering. Turn it off with "set nonu" 
set number

" Set syntax on
syntax on

" Case insensitive search
set ic

" Higlhight search
set hls


" Wrap text instead of being on one line
" set lbr

let mapleader = ","


"Q. mapping nerdtree to Ctrl+D
nmap <silent> <C-D> :NERDTreeToggle<CR>
imap <silent> <C-D> :NERDTreeToggle<CR>

"Q. How can I open a NERDTree automatically when vim starts up?
"A. Stick this in your vimrc: 
"autocmd vimenter * NERDTree

"Q. How can I open a NERDTree automatically when vim starts up if no files were specified?
"A. Stick this in your vimrc 
"autocmd vimenter * if !argc() | NERDTree | endif

"Q. How can I map a specific key or shortcut to open NERDTree?
"A. Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want): 
"map <C-n> :NERDTreeToggle<CR>

"Q. How can I close vim if the only window left open is a NERDTree?
"A. Stick this in your vimrc:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" nerdcommenter
" " ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>



" CONTROL P
set runtimepath^=~/.vim/bundle/ctrlp.vim


" powerline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'unicode'
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors


" SOLARIZED
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
highlight clear SignColumn
