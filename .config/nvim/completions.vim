"*******************************************************
" NVIM COMPLETION MANAGER

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'

autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=noinsert,menuone,noselect
set completeopt=noinsert,menuone
set shortmess+=c
"imap <expr> <CR> (pumvisible() ? "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
"imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-j>":"\<CR>")
inoremap <C-c> <ESC>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"*******************************************************
" TERN

Plug 'ncm2/ncm2-tern', { 'do': 'npm install' }

"*******************************************************
" CLANG

Plug 'ncm2/ncm2-pyclang'

"*******************************************************
" JEDI

Plug 'ncm2/ncm2-jedi'

"*******************************************************
" ULTISNIPS

Plug 'ncm2/ncm2-ultisnips'

inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

"*******************************************************
" BUFWORD

Plug 'ncm2/ncm2-bufword'

"*******************************************************
