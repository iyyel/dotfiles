"
" ~/.config/nvim/init.vim
"
" Authors:
"  InAbsentia <github.com/inabsencia>
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

colorscheme synthwave

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
