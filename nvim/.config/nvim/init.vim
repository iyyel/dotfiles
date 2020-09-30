"
" ~/.config/nvim/init.vim
"
" Authors:
"  Iyyel <github.com/iyyel>
"
" nvim config file
"

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" one-dark
Plug 'joshdick/onedark.vim'

" color highlighting
Plug 'lilydjwg/colorizer'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" lint engine (ALE)
Plug 'dense-analysis/ale'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'sheerun/vim-polyglot'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

set hidden
set nocompatible
syntax on
filetype plugin indent on
set updatetime=300

set termguicolors
set background=dark
colorscheme onedark

set number

set scrolloff=7                 " Show 7 lines around the cursorline
let g:netrw_banner = 0          " Hide banner shown in the file explorer
let g:netrw_liststyle = 3       " Use tree view in file explorer
set hidden                      " allow buffer switching without saving
set showtabline =2              " Show tabline always
set guicursor=                  " Status bar shows mode; cursor needn't 
set encoding=UTF-8
set shell=/usr/bin/bash
set mouse=
set nowrap

" indentation
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


" case sensitivity
set ignorecase
set smartcase

" open new split panes naturally
set splitbelow
set splitright

" disable swap
set noswapfile
