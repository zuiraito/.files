syntax enable

set number
set relativenumber
set breakindent
set enc=utf-8
set mouse=a
setlocal spell
set spelllang=en,de
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" For vim wiki:
set nocompatible
filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')  " For Vim

" List of plugins (example below)
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'zathura'
let g:vimtex_view_forward_search = 1
call plug#end()
