lua require('plugins')

set termguicolors
colorscheme palenight

" Remap to CTRL-C to ESC
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Syntax highlighting
syntax on

" Linenumbers
set number
set ruler

" Mute bell
set visualbell

set encoding=utf-8
set wrap

set autoindent
set smartindent

" Custom Keybinds

  " goto prev file
  nnoremap gb <C-^>
