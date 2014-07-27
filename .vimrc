"~~~~~~~~~~INIT~~~~~~~~~~"
" Source vundle plugin list
so ~/.vim/.bundles.vim

" Turn off vi compatibility
set nocompatible

" Necessary for airline
set laststatus=2

" Default encoding
set encoding=utf-8


"~~~~~~~~~~KEYBINDINGS~~~~~~~~~~"
" Re-map leader key
let mapleader=","

" Split navigation
set splitright
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Split resizing
nnoremap <silent> <C-j> :vertical resize -5<cr>
nnoremap <silent> <C-k> :vertical resize +5<cr>
nnoremap <silent> <C-b> ggVG

" Nerd Tree toggle
map <silent> <C-n> :NERDTreeToggle<CR>

" Turn off search highlighting
map <silent> <C-o> :nohlsearch<CR>

" Quicker exit from insert mode
inoremap <silent> jj <ESC>

" Quicker write in normal mode
nnoremap <silent> ;w :w<CR>

" Close quickfix window
nmap <silent> <leader>` :ccl<CR>

" Close buffer without closing split
map <leader>q :bp\|bd #<CR>


"~~~~~~~~~~VIM SETTINGS~~~~~~~~~~"
" Backspace over any text
set backspace+=start,eol,indent

" Enable line numbering
set nu

" Don't scroll past 10 lines after current line of text
set so=10

" Turn off visual flashing
set vb

" Wildmode options
set wildmenu
set wildmode=longest:full,full


"~~~~~~~~~~TAB SETTINGS~~~~~~~~~~"
" Auto-indent next lines
set autoindent

" Set re-indent ops to 4 spaces
set shiftwidth=4

" Tabs count for 4 spaces
set tabstop=4

" Expand tabs to spaces
set expandtab

" Indent guides
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2


"~~~~~~~~~~COLOR~~~~~~~~~~"
" Enable 256 color support
set t_Co=256

" Dark backgrounds are much better
set background=dark

" Enable syntax highlighting
syntax on

" Make colorscheme use Xresources
let g:hybrid_use_Xresources=1

" Color File
colorscheme hybrid

" Change color of matched parentheses
highlight MatchParen ctermfg=white ctermbg=black


"~~~~~~~~~~SEARCH SETTINGS~~~~~~~~~~"
" Case insensitive search
set ignorecase

" Incremental search as you type
set incsearch

" Highlight search matches
set hlsearch

" Formatting for ag searching
let g:agprg="ag --smart-case --column"


"~~~~~~~~~~FILE TYPES~~~~~~~~~~"
" Set coffeescript files to default to 2 spaces per tab
autocmd FileType coffee setl sw=2 sts=2 et

" Syntax highlighting for .conf files
autocmd BufRead,BufNewFile *.conf setf dosini

" Set emblem files to default to 2 spaces per tab
autocmd FileType emblem setl sw=2 sts=2 et

" Set json files to their correct filetype
au BufRead,BufNewFile *.json set filetype=json


"~~~~~~~~~~VIM-AIRLINE~~~~~~~~~~"
" Enable powerline fonts
let g:airline_powerline_fonts = 0

" Set airline theme
let g:airline_theme="bubblegum"

"Enable mercurial support
let g:airline_enable_lawrencium=1

let g:airline_right_sep = ''
let g:airline_left_sep = ''


"~~~~~~~~~~NERDTREE~~~~~~~~~~"
" Set default size for NerdTree window
let g:NERDTreeWinSize=35

" Close vim if NERDTree is last buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"~~~~~~~~~~SYNTASTIC~~~~~~~~~~"
" Start syntastic on startup
let g:syntastic_check_on_open=1

" Enable gutter signs
let g:syntastic_enable_signs=1

" Default to C++11 compiler
let g:syntastic_cpp_compiler_options = ' -std=c++11'


"~~~~~~~~~~CTRL-P~~~~~~~~~"
" Use the silver searcher if available
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif


"~~~~~~~~~YCM~~~~~~~~~~"
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set completeopt=menu,menuone

"~~~~~~~~~ULTISNIPS~~~~~~~~~~"
let g:UltiSnipsExpandTrigger="<c-j>"
