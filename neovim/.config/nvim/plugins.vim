"*******************************************************
" ACK
Plug 'mileszs/ack.vim'
let g:ackprg="ag --nogroup --nocolor --column"

"*******************************************************
" SNIPPETS

let g:UltiSnipsExpandTrigger="<c-j>"

"*******************************************************
" EASY ALIGN

Plug 'junegunn/vim-easy-align'

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"*******************************************************
" SNEAK

Plug 'justinmk/vim-sneak'
let g:sneak#label = 1

