"~~~~~~~~~~INIT~~~~~~~~~~"
" Source vundle plugin list
so ~/.vim/.bundles.vim

" Turn off vi compatibility
set nocompatible

" Necessary for airline
set laststatus=2

" Default encoding
set encoding=utf-8

" Auto-reload changed files
set autoread

" Line wrapping
set wrap


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
nnoremap <silent> <leader>a ggVG

" Nerd Tree toggle
nnoremap <silent> <C-n> :NERDTreeToggle<CR>

" Turn off search highlighting
nmap <silent> <C-o> :nohlsearch<CR>

" Quicker exit from insert mode
inoremap <silent> jj <ESC>

" Quicker write in normal mode
nnoremap <silent> ;w :w<CR>

" Close quickfix window
nmap <silent> <leader>` :ccl<CR>

" Close buffer without closing split
map <leader>q :bp\|bd #<CR>

" Easy align
vmap <Enter> <Plug>(EasyAlign)

" Interactive Easy Align
nmap ga <Plug>(EasyAlign)


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

" Change case settings
set smartcase
set ignorecase


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

" Enable syntax highlighting
syntax enable

" Background
set background=dark

" Color scheme
colorscheme base16-ocean

" Airline theme
let g:airline_theme="base16"

" Change color of matched parentheses
highlight MatchParen ctermfg=white ctermbg=black

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE


"~~~~~~~~~~SEARCH SETTINGS~~~~~~~~~~"
" Case insensitive search
set ignorecase

" Incremental search as you type
set incsearch

" Highlight search matches
set hlsearch

" Formatting for ag searching
let g:agprg="ag --smart-case --column"

" Formatting for ack
let g:ackprg="ag --nogroup --nocolor --column"


"~~~~~~~~~~FILE TYPES~~~~~~~~~~"
" Set coffeescript files to default to 2 spaces per tab
autocmd FileType coffee setl sw=2 sts=2 et

" Syntax highlighting for .conf files
autocmd BufRead,BufNewFile *.conf setf dosini

" Set emblem files to default to 2 spaces per tab
autocmd FileType emblem setl sw=2 sts=2 et

" Set json files to their correct filetype
au BufRead,BufNewFile *.json set filetype=json

" Check cs files on return to normal mode
let g:syntastic_cs_checkers = ['syntax', 'issues']
autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

" Automatically add new cs files to nearest project
autocmd BufWritePost *.cs call OmniSharp#AddToProject()

" Automatically trim whitespace
autocmd BufWritePre *.cs,*.coffee,*.js :%s/\s\+$//e


"~~~~~~~~~~VIM-AIRLINE~~~~~~~~~~"
" Disable powerline fonts
let g:airline_powerline_fonts = 0

"Enable mercurial support
let g:airline_enable_lawrencium=1

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

let g:airline_left_sep = ''
let g:airline_right_sep = ''

"~~~~~~~~~~TMUXLINE~~~~~~~~~~~"
let g:tmuxline_separators = {
    \ 'left': '',
    \ 'left_alt': '',
    \ 'right': '',
    \ 'right_alt': '',
    \ 'space': ' ' }

"~~~~~~~~~~SYNTASTIC~~~~~~~~~~"
" Start syntastic on startup
let g:syntastic_check_on_open=1

" Enable gutter signs
let g:syntastic_enable_signs=1

" Default to C++11 compiler
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"~~~~~~~~~~NERDTREE~~~~~~~~~~"
"" Set default size for NerdTree window
let g:NERDTreeWinSize=35


"~~~~~~~~~~CTRL-P~~~~~~~~~"
set wildignore =*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*,*/\.hg/*,*/node_modules/*,*/bower_components/*,*/public/*,*/bin/*,*/obj/*

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -S -l --depth -1 --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif


"~~~~~~~~~YCM~~~~~~~~~~"
let g:ycm_global_ycm_extra_conf = '~/src/configs/.ycm_extra_conf.py'
set completeopt=menu,menuone

"~~~~~~~~~ULTISNIPS~~~~~~~~~~"
let g:UltiSnipsExpandTrigger="<c-j>"

"~~~~~~~~~TAGBAR~~~~~~~~~"
nnoremap <silent> <C-i> :TagbarToggle<CR>
