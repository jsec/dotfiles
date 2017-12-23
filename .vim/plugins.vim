"*******************************************************
" ACK
Plug 'mileszs/ack.vim'
let g:ackprg="ag --nogroup --nocolor --column"

"*******************************************************
" AGS

Plug 'gabesoft/vim-ags'

"*******************************************************
" CTRLP

Plug 'kien/ctrlp.vim'

let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'Ctrlp'

let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 0

"*******************************************************
" NERDTREE

Plug 'scrooloose/nerdtree'

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=35

"*******************************************************
" NERDTREE-ACK

Plug 'vim-scripts/nerdtree-ack'

"*******************************************************
" NEOMAKE

Plug 'benekastah/neomake'

autocmd! BufWritePost * Neomake
let g:neomake_open_list = 0

"*******************************************************
" AIRLINE

Plug 'vim-airline/vim-airline'

set laststatus=2

let g:airline_powerline_fonts = 1
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n' : 'N',
      \ 'i' : 'I',
      \ 'R' : 'R',
      \ 'c' : 'C',
      \ 'v' : 'V',
      \ 'V' : 'V',
      \ 's' : 'S',
      \ 'S' : 'S',
      \ }

"*******************************************************
" SNIPPETS

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<c-j>"

"*******************************************************
" EASY ALIGN

Plug 'junegunn/vim-easy-align'

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"*******************************************************
" DEOPLETE

Plug 'Shougo/deoplete.nvim'

let g:deoplete#enable_at_startup = 1

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"*******************************************************
" TERN

Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

let g:tern_show_argument_hints = 'on_hold'
let g:tern_show_signature_in_pum = 1

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

"*******************************************************
" MISC

Plug 'bitc/vim-bad-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'myusuf3/numbers.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'tmux-plugins/vim-tmux-focus-events'
