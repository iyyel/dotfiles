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

" colorscheme
Plug 'arcticicestudio/nord-vim'

" syntax highlighting for packages
Plug 'sheerun/vim-polyglot'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" lint engine (ALE)
Plug 'dense-analysis/ale'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" disable markdown folding
let g:vim_markdown_folding_disabled = 1

set nocompatible
filetype plugin on
syntax on

set termguicolors
set background=dark
colorscheme nord

set number

set scrolloff=7                 " Show 7 lines around the cursorline
let g:netrw_banner = 0          " Hide banner shown in the file explorer
let g:netrw_liststyle = 3       " Use tree view in file explorer
set hidden                      " allow buffer switching without saving
set showtabline =2              " Show tabline always
set guicursor=                  " Status bar shows mode; cursor needn't 
set encoding=UTF-8
set shell=/usr/bin/zsh
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

" neovim terminal emulator
:tnoremap <Esc> <C-\><C-n>
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
