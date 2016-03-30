"*******************************************************
" ACK
Plug 'mileszs/ack.vim'
let g:ackprg="ag --nogroup --nocolor --column"

"*******************************************************
" AG

Plug 'rking/ag.vim'
let g:agprg="ag --smart-case --column"

"*******************************************************
" CTRLP

Plug 'ctrlpvim/ctrlp.vim'

set wildignore =*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/\.hg/*,*/node_modules/*,*/bower_components/*,*/public/*,*/bin/*,*/obj/*

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -S -l --depth -1 --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif

"*******************************************************
" NERDTREE

Plug 'scrooloose/nerdtree'

nnoremap <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=35

"*******************************************************
" NERDTREE-ACK

Plug 'vim-scripts/nerdtree-ack'

"*******************************************************
" TAGBAR

Plug 'majutsushi/tagbar'

nnoremap <silent> <C-i> :TagbarToggle<CR>

"*******************************************************
" SYNTASTIC

Plug 'scrooloose/syntastic'

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"*******************************************************
" AIRLINE

Plug 'bling/vim-airline'

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
" AIRLINE THEMES

Plug 'vim-airline/vim-airline-themes'

"*******************************************************
" YOUCOMPLETEME

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --system-libclang --racer-completer' }

let g:ycm_global_ycm_extra_conf = '~/src/configs/.ycm_extra_conf.py'
let g:ycm_rust_src_path = '/usr/src/rust/src'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

set completeopt=menu,menuone

"*******************************************************
" SNIPPETS

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

let g:UltiSnipsExpandTrigger="<c-j>"

"*******************************************************
" MISC

Plug 'bitc/vim-bad-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'myusuf3/numbers.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'NLKNguyen/papercolor-theme'
Plug 'xolox/vim-misc'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'junegunn/vim-easy-align'
