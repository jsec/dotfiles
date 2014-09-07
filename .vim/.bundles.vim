set nocompatible

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required
Bundle 'gmarik/vundle'

" Directory Navigation
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/nerdtree-ack'
Bundle 'rking/ag.vim'

" Linting
Bundle 'scrooloose/syntastic'
Bundle 'bitc/vim-bad-whitespace'

" Version control support
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/hgrev'
Bundle 'ludovicchabant/vim-lawrencium'

" Eye candy
Bundle 'myusuf3/numbers.vim'
Bundle 'bling/vim-airline'
Bundle 'nanotech/jellybeans.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'zefei/cake16'
Bundle 'nathanaelkane/vim-indent-guides'

" Snippet support
Bundle 'SirVer/ultisnips'
Bundle 'honza/vim-snippets'

" Syntax files
Bundle 'hdima/python-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'moll/vim-node'
Bundle 'wavded/vim-stylus'
Bundle 'heartsentwined/vim-ember-script'
Bundle 'heartsentwined/vim-emblem'
Bundle 'nono/vim-handlebars'
Bundle 'groenewege/vim-less'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'davidhalter/jedi-vim'
Bundle 'elzr/vim-json'
Bundle 'digitaltoad/vim-jade'
Bundle 'OrangeT/vim-csharp'
Bundle 'plasticboy/vim-markdown'
Bundle 'fatih/vim-go.git'

" Misc
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-easytags'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-dispatch'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on
