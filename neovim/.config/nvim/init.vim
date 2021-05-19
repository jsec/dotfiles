"**********PLUGINS***********
filetype off
call plug#begin('~/.local/share/nvim/plugged')

"so ~/.config/nvim/coc.vim
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
require('_coc')
EOF

call plug#end()
filetype plugin indent on

" Python paths
let g:python2_host_prog = "/usr/local/bin/python2"
let g:python3_host_prog = "/usr/local/bin/python3"

" Go stuff
let g:go_bin_path = "/home/jsec/src/go/bin"
let $GOPATH = $HOME."/go"
