set nocompatible              " be iMproved, required
set nowrap
set clipboard=unnamed
set backspace=indent,eol,start

" Change how vim represents characters on the screen
set encoding=utf-8

" Set the encoding of files written
set fileencoding=utf-8

" Control all other files
set shiftwidth=4

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'sainnhe/everforest'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

" Language-specific settings
" ts - show existing tab with 4 spaces width
" sw - when indenting with '>', use 4 spaces width
" sts - control <tab> and <bs> keys to match tabstop
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4

filetype plugin indent on    " required

syntax enable
set background=dark
colorscheme everforest

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

filetype plugin indent on

" Golang

let g:go_fmt_command = "gofmt"
let g:go_auto_type_info = 1
au filetype go inoremap <buffer> . .<C-x><C-o>

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" airline
" air-line plugin specific commands
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
