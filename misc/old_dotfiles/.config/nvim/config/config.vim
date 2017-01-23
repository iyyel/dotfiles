"
" ~/.config/nvim/config/config.vim
"
" Authors:
"   Iyyel <github.com/iyyel>
"

" Default configuration file

" Vundle Configuration
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/')
" Plugins start

" Vundle
Plugin 'VundleVim/Vundle.vim'

" NERDTree 
Plugin 'scrooloose/nerdtree'

" ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

" Syntastic
Plugin 'scrooloose/syntastic'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" deoplete  
Plugin 'Shougo/deoplete.nvim'

" delimitMate
Plugin 'Raimondi/delimitMate'

" Plugins end
call vundle#end()       
filetype plugin indent on

" Plugin Settings

" deoplete
let g:deoplete#enable_at_startup=1

" Syntastic
set shortmess=atTiOI
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Python3 plugins
call remote#host#RegisterPlugin('python3', '/home/iyyel/.config/nvim/bundle/deoplete.nvim/rplugin/python3/deoplete', [
      \ {'sync': v:true, 'name': '_deoplete', 'type': 'function', 'opts': {}},
     \ ])

""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""" Neovim Settings """"""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""

" Colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set background=dark

syntax enable

"set termguicolors

" Encoding
set encoding=UTF-8

" Shell
set shell=/usr/bin/zsh

" Disable mouse
set mouse=

" Stop wrapping
set nowrap

" Line numbers
set number

" Indentation
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Case sensitivity
set ignorecase
set smartcase

" Open new split panes naturally
set splitbelow
set splitright

" Disable swap
set noswapfile

" Neovim terminal emulator
:tnoremap <Esc> <C-\><C-n>
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l
