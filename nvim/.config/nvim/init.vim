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

" gruvbox
Plug 'morhetz/gruvbox'

" color highlighting
Plug 'lilydjwg/colorizer'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


set hidden
set nocompatible
filetype plugin indent on
set updatetime=300
set background=dark

syntax on
colorscheme gruvbox


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

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
