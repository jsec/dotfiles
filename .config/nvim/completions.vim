"*******************************************************
" NVIM COMPLETION MANAGER

Plug 'roxma/nvim-completion-manager'

set shortmess+=c
imap <expr> <CR> (pumvisible() ? "\<c-y>\<Plug>(expand_or_nl)" : "\<CR>")
imap <expr> <Plug>(expand_or_nl) (cm#completed_is_snippet() ? "\<C-j>":"\<CR>")

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"*******************************************************
" TERN

Plug 'roxma/nvim-cm-tern', { 'do': 'npm install' }

"*******************************************************
" CLANG

Plug 'roxma/ncm-clang'

"*******************************************************
