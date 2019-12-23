""
"" ~/.config/nvim/init.vim
""
"" Authors:
""  Iyyel <github.com/iyyel>
""
"" neovim configuration file.
""

"" ====================================================================
""           Vim-Plug Settings               
"" ====================================================================
call plug#begin('~/.config/nvim/pluginz')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }     " NERDTree
Plug 'ctrlpvim/ctrlp.vim'                                  " ctrlp
Plug 'scrooloose/syntastic'                                " syntastic
Plug 'tpope/vim-fugitive'                                  " vim-fugitive
Plug 'Shougo/deoplete.nvim'                                " deoplete
Plug 'Raimondi/delimitMate'                                " delimitMate
Plug 'arcticicestudio/nord-vim', { 'branch': 'develop' }   " Nord theme 
Plug 'junegunn/goyo.vim'                                   " distraction free writing
Plug 'junegunn/limelight.vim'                              " hyperfocused writing
Plug 'reedes/vim-pencil'                                   " improved writing experience
Plug 'itchyny/lightline.vim'                               " a really cool status bar
Plug 'mgee/lightline-bufferline'                           " Show buffers in tabline
Plug 'nelstrom/vim-markdown-folding'                       " Fold markdown files by headings
Plug 'machakann/vim-sandwich'                              " Surround text objects easily

call plug#end()

"" ====================================================================
""           Vim Color Configuration             
"" ====================================================================

let g:nord_italic = 1               " Enable italics
let g:nord_comment_brightness = 10  " Better comment contrast
""colorscheme nord                    " color scheme selection

" ====================================================================
"           Vim Core Configuration              
" ====================================================================

set spell                       " Enable spell-checking
set scrolloff=7                 " Show 7 lines around the cursorline
let g:netrw_banner = 0          " Hide banner shown in the file explorer
let g:netrw_liststyle = 3       " Use tree view in file explorer
set number relativenumber       " Enable line numbers
set hidden                      " allow buffer switching without saving
set cursorline                  " Show cursor line
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

" ====================================================================
"           Plugin Configuration            
" ====================================================================

" Set nested folding as the default fold style for vim-markdown-folding
let g:markdown_fold_style = 'nested'

" Configuration for Pencil
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,vimwiki call pencil#init()
 autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

" Lightline 
set noshowmode              " Hide mode because Lightline handles it 
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'separator': {
      \   'left': '', 
      \   'right':''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \ }

"" Integrate lightline-bufferline with lightline
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

"" Lightline settings
let g:limelight_conceal_ctermfg = 008

"" Goyo settings
"" Disable cursorline highlight, center cursorline and let cursor show mode
function! s:goyo_enter()
  set nocursorline  
  set scrolloff=999
  set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
endfunction

function! s:goyo_leave()
  set cursorline    
  set scrolloff=7
  set guicursor=
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

"" Don't use colors for spelling errors
highlight clear SpellBad
highlight clear SpellCap
highlight clear SpellLocal
highlight clear SpellRare
