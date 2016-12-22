set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'                   " Completion
Plug 'derekwyatt/vim-scala'
Plug 'scrooloose/nerdtree'                      " Filebrowser
Plug 'jistr/vim-nerdtree-tabs'                  " NerdTree integration with tabs
Plug 'vim-airline/vim-airline'                  " Bottom bar 
Plug 'vim-airline/vim-airline-themes'           " Bottom bar themes
Plug 'altercation/vim-colors-solarized'         " Solorized theme, make sure you set background=dark
Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'kien/ctrlp.vim'                           " Fuzzy file search
Plug 'tpope/vim-fugitive'                       " git integration
Plug 'mhinz/vim-signify'                        " Shows file changes on a version controlled file.

call plug#end()


" =========== General Settings
" Theming

set background=dark
colorscheme solarized

" Editing

filetype plugin indent on
syntax enable

set expandtab " always spaces, never tabs
set smarttab
set shiftwidth=4
set tabstop=4
set ai " autoindent
set si " smartindent


set wildmenu 
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
map ; :

" 1 (left side of keyboard) to go to beginning of line
" 0 (right side of keyboard) to go to the end of the line
map 1 ^
map 0 $

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

" vim-signify

let g:signify_vcs_list = ['git']
