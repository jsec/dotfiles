"*******************************************************
" DEOPLETE COMPLETION MANAGER

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go'
