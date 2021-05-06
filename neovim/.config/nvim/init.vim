"**********PLUGINS***********
filetype off
call plug#begin('~/.local/share/nvim/plugged')

so ~/.config/nvim/syntax-files.vim
so ~/.config/nvim/coc.vim
so ~/.config/nvim/lightline.vim
so ~/.config/nvim/plugins.vim

lua << EOF
require('plugins')
require('_telescope')
EOF

call plug#end()
filetype plugin indent on

"**********SETTINGS**********
set laststatus=2                        " needed for airline
set encoding=utf-8                      " default encoding
set autoread                            " auto-reload changed files
set wildmenu                            " wildmenu completions
set wrap                                " line wrapping
set backupdir=~/.config/nvim/backup//   " backup directory
set directory=~/.config/nvim/swap//     " swap directory
set undodir=~/.config/nvim/undo//       " undo directory
set backspace+=start,eol,indent         " backspace over any text
set nu                                  " enable line numbering
set so=10                               " don't scroll past 10 lines
set mouse=a                             " enable mouse support
set vb                                  " turn off visual flash
set ignorecase                          " ignore case in regex pattern
set smartcase                           " don't ignore case if uppercase letter is in search string
set autoindent                          " turn on auto-indent
set shiftwidth=4                        " make shifts 4 spaces
set tabstop=4                           " tabs count for 4 spaces
set expandtab                           " expand tabs to spaces
set ignorecase                          " case insensitive search
set incsearch                           " incremental search
set hlsearch                            " highlight search matches
set splitright                          " new splits go to right of current split
set cmdheight=2                         " coc.nvim message handling
set updatetime=300                      " oof, this thing again
set shortmess+=c                        " suppress ins-completion-menu messages

"**********IGNORES**********
set wildignore+=**/node_modules
set wildignore+=**/bower_components
set wildignore+=**/tmp
set wildignore+=**/dist
set wildignore+=**/.git
set wildignore+=**/bin

"**********KEYBINDINGS**********
" Remap leader key
let mapleader=","

" Split navigation
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Split resizing
nnoremap <silent> <C-j> :vertical resize -5<cr>
nnoremap <silent> <C-k> :vertical resize +5<cr>
nnoremap <silent> <leader>a ggVG

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

"**********COLOR**********
set termguicolors                    " neovim true color
syntax enable                        " enable syntax highlighting
set background=dark
let g:nord_italic = 1
let g:nord_italic_comments = 1
colorscheme nord
hi EndOfBuffer ctermfg=white

" Change color of matched parentheses
highlight MatchParen ctermfg=white ctermbg=black
highlight Normal ctermbg=NONE

"**********FILETYPES***********
autocmd FileType coffee setl sw=2 sts=2 et     " coffeescript 2 spaces per tab
autocmd FileType typescript setl sw=2 sts=2 et " typescript 2 spaces per tab
autocmd FileType stylus setl sw=2 sts=2 et     " stylus 2 spaces per tab
autocmd FileType javascript setl sw=2 sts=2 et " javascript 2 spaces per tab
autocmd BufRead,BufNewFile *.conf setf dosini  " syntax highlighting for conf files
autocmd FileType emblem setl sw=2 sts=2 et     " emblem 2 spaces per tab
au BufRead,BufNewFile *.json set filetype=json " proper filetype for json
autocmd FileType json setl sw=2 sts=2 et       " json 2 spaces per tab
autocmd FileType pug setl sw=2 sts=2 et        " pug 2 spaces per tab

" Automatically trim whitespace
autocmd BufWritePre *.go,*.py,*.js,*.ts :%s/\s\+$//e

" Python paths
let g:python2_host_prog = "/usr/local/bin/python2"
let g:python3_host_prog = "/usr/local/bin/python3"

" Go stuff
let g:go_bin_path = "/home/jsec/src/go/bin"
let $GOPATH = $HOME."/go"
