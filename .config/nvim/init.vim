" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'tpope/vim-fugitive'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

let g:seoul256_background = 233
let g:seoul256_light_background = 256

colo seoul256

set ts=2 sw=2
set number
set cuc
