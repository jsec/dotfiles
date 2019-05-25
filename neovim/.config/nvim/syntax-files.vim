Plug 'moll/vim-node'
Plug 'tpope/vim-rails'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sheerun/vim-polyglot'
Plug 'jsec/vim-coffee-script'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }

let g:go_fmt_command = "goimports"
let g:polyglot_disabled = ['typescript']
