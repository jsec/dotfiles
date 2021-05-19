"**********PLUGINS***********
filetype off
call plug#begin('~/.local/share/nvim/plugged')

so ~/.config/nvim/coc.vim
so ~/.config/nvim/plugins.vim

lua << EOF
require('plugins')
require('settings')
require('colorscheme')
require('_keybindings')
require('_telescope')
require('_devicons')
require('_nvim-tree')
require('_galaxyline')
EOF

call plug#end()
filetype plugin indent on

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
autocmd BufWritePre * :%s/\s\+$//e

" Python paths
let g:python2_host_prog = "/usr/local/bin/python2"
let g:python3_host_prog = "/usr/local/bin/python3"

" Go stuff
let g:go_bin_path = "/home/jsec/src/go/bin"
let $GOPATH = $HOME."/go"
