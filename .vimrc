"Setting 'nocompatible' switches from the default 
"Vi-compatibility mode and enables useful Vim functionality. 
"set nocompatible"

syntax on

"Diable the default Vim startup message.
set shortmess+=I

"Show numbers
set number

"set relative number
"set relativenumber

" Always show the status line at the bottom
set laststatus=2

" This configuration makes backspace, backspace over anything.
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer that has unsaved changes.
set hidden

" This setting makes search case-insensitive when all characters in the string being searched are lowercase.
"set ignorecase"
"set smartcase"

" Unbind useless default key bindings
nmap Q <Nop> 

" Disable audible bell...
set noerrorbells visualbell t_vb=

