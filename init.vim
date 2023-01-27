lua require('plugins')

set termguicolors
colorscheme palenight

" Remap to CTRL-C to ESC
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

"Terminalmode

tmap <C-Q> <C-\><C-N>

" Syntax highlighting
syntax on

" Linenumbers
set number
set ruler

" default tabwidth
set tabstop=4
set shiftwidth=4

" Mute bell
set visualbell

set encoding=utf-8
set wrap

set autoindent
set smartindent

" Custom Keybinds

  " goto prev file
  nnoremap gb <C-^>
