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

let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob "!.git/*"'
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
" MISC

Plug 'bitc/vim-bad-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'myusuf3/numbers.vim'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'jiangmiao/auto-pairs'
Plug 'gruvbox-community/gruvbox'
