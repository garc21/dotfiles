" Setting 'nocompatible' switches from the default 
" Vi-compatibility mode and enables useful Vim functionality. 
"set nocompatible"

"syntax on

" diable the default Vim startup message.
set shortmess+=I

set number
"set relativenumber

" always show the status line at the bottom
"set laststatus=2

set ruler

set history=100


" this configuration makes backspace, backspace over anything.
set backspace=indent,eol,start

" by default, Vim doesn't let you hide a buffer that has unsaved changes.
set hidden

set smartindent

set nospell

set textwidth=72

set smarttab

set autoindent

set shiftwidth=2

set tabstop=2

set expandtab

set incsearch

set wrap

set linebreak

" mark trailing spaces as errors
match IncSearch '\s\+$'


" this setting makes search case-insensitive when all characters in the string being searched are lowercase.
"set ignorecase"
"set smartcase"

" unbind useless default key bindings
nmap Q <Nop>

" disable audible bell...
set noerrorbells visualbell t_vb=

" faster scrolling
set ttyfast

" high contrast
set background=dark

" default color changes
hi StatusLine ctermfg=black ctermbg=NONE
hi StatusLineNC ctermfg=black ctermbg=NONE
hi LineNr ctermfg=grey ctermbg=NONE

" color overrides
au FileType * hi LineNr ctermfg=grey ctermbg=NONE
au FileType * hi StatusLine ctermfg=black ctermbg=NONE
au FileType * hi StatusLineNC ctermfg=black ctermbg=NONE


call plug#begin('~/.vimplugins')
Plug 'vim-pandoc/vim-pandoc'
Plug 'rwxrob/vim-pandoc-syntax-simple'
call plug#end()

" pandoc
let g:pandoc#formatting#mode = 'h' " A'
let g:pandoc#formatting#textwidth = 72
let g:pandoc#spell#enabled = 0
