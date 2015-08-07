set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

" Navigation
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/nerdtree-ack'
Plug 'rking/ag.vim'
Plug 'majutsushi/tagbar'

" Linting
Plug 'scrooloose/syntastic'
Plug 'bitc/vim-bad-whitespace'

" Version control support
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/hgrev'
Plug 'ludovicchabant/vim-lawrencium'

" Eye Candy
Plug 'myusuf3/numbers.vim'
Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/base16-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'airblade/vim-gitgutter'

" Snippet Support
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Syntax Files
Plug 'hdima/python-syntax'
Plug 'jsec/vim-coffee-script'
Plug 'lukaszkorecki/coffeetags'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jelera/vim-javascript-syntax'
Plug 'moll/vim-node'
Plug 'wavded/vim-stylus'
Plug 'heartsentwined/vim-ember-script'
Plug 'heartsentwined/vim-emblem'
Plug 'nono/vim-handlebars'
Plug 'groenewege/vim-less'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'davidhalter/jedi-vim'
Plug 'elzr/vim-json'
Plug 'digitaltoad/vim-jade'
Plug 'OrangeT/vim-csharp'
Plug 'plasticboy/vim-markdown'
Plug 'noc7c9/vim-iced-coffee-script'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'

" Misc
Plug 'xolox/vim-misc'
Plug 'ludovicchabant/vim-gutentags'
Plug 'Raimondi/delimitMate'
Plug 'nosami/Omnisharp'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --clang-completer --system-libclang' }
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'scrooloose/nerdcommenter'
Plug 'Lokaltog/vim-easymotion'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'junegunn/vim-easy-align'

call plug#end()

filetype plugin indent on
