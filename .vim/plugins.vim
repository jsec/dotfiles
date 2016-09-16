"**********COLOR**********
Plug 'morhetz/gruvbox'

"**********COMMENTING**********
Plug 'scrooloose/nerdcommenter'

"**********DELIMITING**********
Plug 'Raimondi/delimitMate'

"**********FUZZY SEARCHING**********
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'gabesoft/vim-ags'

"**********NERDTREE**********
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/nerdtree-ack'

"**********TMUX-FOCUS-EVENTS**********
Plug 'tmux-plugins/vim-tmux-focus-events'

let g:NERDTreeWinSize=35
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

"**********TAGS**********
Plug 'ludovicchabant/vim-gutentags'

"**********CTRLP**********
Plug 'ctrlpvim/ctrlp.vim'

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor

    let g:ag_prg="ag --smart-case --column"
    let g:ctrlp_use_caching = 0

    let g:ctrlp_user_command = 'ag %s -S -l --depth -1 --nocolor -g ""'
endif

""**********NEOMAKE**********
Plug 'benekastah/neomake'

autocmd! BufWritePost * Neomake
let g:neomake_open_list = 0

"**********BAD-WHITESPACE**********
Plug 'bitc/vim-bad-whitespace'

"**********FUGITIVE**********
Plug 'tpope/vim-fugitive'

"**********AIRLINE**********
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let airline#extensions#default#section_use_groupitems = 0
let g:airline_powerline_fonts                         = 1
let g:airline_theme                                   = "gruvbox"

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

"**********ULTISNIPS**********
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<c-j>"

"**********YCM**********
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --racer-completer'}

let g:ycm_global_ycm_extra_conf = '~/src/configs/.ycm_extra_conf.py'
let g:ycm_rust_src_path         = '/Users/jsec/src/rust/rust/src'
set completeopt=menu,menuone

"**********EASYALIGN**********
Plug 'junegunn/vim-easy-align'

vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"**********SNEAK**********
Plug 'justinmk/vim-sneak'

let g:sneak#streak=1
