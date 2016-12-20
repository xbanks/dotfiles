set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'derekwyatt/vim-scala'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'

call plug#end()


" =========== General Settings
" Theming

set background=dark
colorscheme solarized

" Editing

filetype plugin indent on
syntax enable

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai " autoindent
set si " smartindent

set spell

set number
set relativenumber
set cursorline
set cursorcolumn

set autoread " auto-reload files changed outsude of the buffer
set ruler
set showtabline=2
set backspace=indent,eol,start

set omnifunc=syntaxcomplete#Complete " auto-completion thingy
" Custom commands

command! Evimrc execute "tabnew ~/.vimrc"
command! Ytest execute "!yarn test"
" Key Mappings

map <space> /
map 0 ^

map <Tab> :NERDTreeFocusToggle<CR>

:imap jk <Esc>
:imap kl <Esc>
:imap td // TODO(xavier): 

" =========== Typescript Stuff

" QuickFix menue on :make failures
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Compiler Options
autocmd FileType typescript :set makeprg=tsc

