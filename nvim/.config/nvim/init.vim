"
" ~/.config/nvim/init.vim
"
" Authors:
"  Iyyel <github.com/iyyel>
"
" neovim configuration file.
"

" Vundle Configuration
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""" Neovim Settings """"""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""

""""" vim-plug
call plug#begin('~/.config/nvim/pluginz')

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" ctrlp
Plug 'ctrlpvim/ctrlp.vim'

" syntastic
Plug 'scrooloose/syntastic'

" vim-fugitive
Plug 'tpope/vim-fugitive'

" deoplete
Plug 'Shougo/deoplete.nvim'

" delimitMate
Plug 'Raimondi/delimitMate'

call plug#end()
"""""

" Colors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set background=dark

syntax enable

" encoding
set encoding=UTF-8

" shell
set shell=/usr/bin/zsh

" disable mouse
set mouse=

" stop wrapping
set nowrap

" line numbers
"set number

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

" hide statusline
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

:call ToggleHiddenAll()
nnoremap <S-h> :call ToggleHiddenAll()<CR>
