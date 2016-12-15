set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'derekwyatt/vim-scala'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

call plug#end()

filetype plugin indent on
syntax enable

set background=dark
colorscheme solarized

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai
set si

set number
set autoread
set ruler

" mappings

map <space> /
map 0 ^

:imap jk <Esc>
