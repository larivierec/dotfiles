set nocompatible              " be iMproved, required
set nowrap
set clipboard=unnamed
set tabstop=4
set expandtab
set shiftwidth=4

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" c#
let g:OmniSharp_server_type = 'roslyn' 
let g:OmniSharp_prefer_global_sln = 1  
let g:OmniSharp_timeout = 10    

" java
let g:syntastic_java_checkers = []
let g:EclimFileTypeValidate = 0

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()            " required
filetype plugin indent on    " required
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

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

nnoremap <F4> :YcmCompleter GoToInclude
nnoremap <leader><C-g> :YcmCompleter GoToDefinition

