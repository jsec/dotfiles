" jsec's .vimrc
" no, i don't share
" well, maybe if you buy me some cake. or a beer.
" ok, not even for cake.

so ~/.vim/.bundles.vim

set nocompatible
set laststatus=2
set encoding=utf-8

nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>
nnoremap <silent> <C-j> :vertical resize -5<cr>
nnoremap <silent> <C-k> :vertical resize +5<cr>
map <silent> , <leader>
nnoremap <silent> <C-b> ggVG

" color settings
set t_Co=256
set background=dark
colorscheme base16-ocean
syntax enable

" airline settings
let g:airline_powerline_fonts = 1
let g:airline_theme="ubaryd"
let g:airline_enable_lawrencium=1

" nerd tree settings
map <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=35
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" tab settings
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab

" File type specific settings
autocmd FileType coffee setl sw=2 sts=2 et
autocmd BufRead,BufNewFile *.conf setf dosini
autocmd FileType emblem setl sw=2 sts=2 et

" search settings
set ignorecase
set incsearch
set hlsearch
map <silent> <C-o> :nohlsearch<CR>

" syntax check settings
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" Ctrl-P settings
if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_use_caching = 0
endif
" misc keybindings
inoremap <silent> jj <ESC>
nnoremap <silent> ;w :w<CR>
nmap <silent> \` :ccl<CR>

" misc settings
set backspace+=start,eol,indent
set nu
set so=10
set mouse=a
set vb
map <leader>q :bp\|bd #<CR>
highlight MatchParen ctermfg=white ctermbg=black

let g:neocomplete#enable_at_startup = 1
