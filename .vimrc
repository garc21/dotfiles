" Setting 'nocompatible' switches from the default 
" Vi-compatibility mode and enables useful Vim functionality. 
"set nocompatible"

syntax on

" diable the default Vim startup message.
set shortmess+=I

set number
"set relativenumber

" always show the status line at the bottom
"set laststatus=2

set ruler

set history=100

"set spell

" this configuration makes backspace, backspace over anything.
set backspace=indent,eol,start

" by default, Vim doesn't let you hide a buffer that has unsaved changes.
set hidden

set smartindent

set textwidth=72

set smarttab

set autoindent

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
hi LineNr ctermfg=black ctermbg=NONE

" color overrides
au FileType * hi LineNr ctermfg=black ctermbg=NONE
au FileType * hi StatusLine ctermfg=black ctermbg=NONE
au FileType * hi StatusLineNC ctermfg=black ctermbg=NONE
