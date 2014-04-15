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
map <silent> , <leader>

" Split navigation
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

" Enable mouse support (I'M STILL NEW AT THIS)
set mouse=a

" Turn off visual flashing
set vb


"~~~~~~~~~~TAB SETTINGS~~~~~~~~~~"
" Auto-indent next lines
set autoindent

" Set re-indent ops to 4 spaces
set shiftwidth=4

" Tabs count for 4 spaces
set tabstop=4

" Expand tabs to spaces
set expandtab


"~~~~~~~~~~COLOR~~~~~~~~~~"
" Enable 256 color support
set t_Co=256

" Dark backgrounds are much better
set background=dark

" Color File
colorscheme base16-ocean

" Enable syntax highlighting
syntax enable

" Change color of matched parentheses
highlight MatchParen ctermfg=white ctermbg=black


"~~~~~~~~~~SEARCH SETTINGS~~~~~~~~~~"
" Case insensitive search
set ignorecase

" Incremental search as you type
set incsearch

" Highlight search matches
set hlsearch

"~~~~~~~~~~FILE TYPES~~~~~~~~~~"
" Set coffeescript files to default to 2 spaces per tab
autocmd FileType coffee setl sw=2 sts=2 et

" Syntax highlighting for .conf files
autocmd BufRead,BufNewFile *.conf setf dosini

" Set emblem files to default to 2 spaces per tab
autocmd FileType emblem setl sw=2 sts=2 et


"~~~~~~~~~~VIM-AIRLINE~~~~~~~~~~"
" Enable powerline fonts
let g:airline_powerline_fonts = 1

" Set airline theme
let g:airline_theme="ubaryd"

"Enable mercurial support
let g:airline_enable_lawrencium=1


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

