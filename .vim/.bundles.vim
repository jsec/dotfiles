set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" Required
Plugin 'gmarik/vundle'

" Directory Navigation
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/nerdtree-ack'
Plugin 'rking/ag.vim'
Plugin 'majutsushi/tagbar'

" Linting
Plugin 'scrooloose/syntastic'
Plugin 'bitc/vim-bad-whitespace'

" Version control support
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/hgrev'
Plugin 'ludovicchabant/vim-lawrencium'

" Eye candy
Plugin 'myusuf3/numbers.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" Snippet support
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Syntax files
Plugin 'hdima/python-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'lukaszkorecki/coffeetags'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'moll/vim-node'
Plugin 'wavded/vim-stylus'
Plugin 'heartsentwined/vim-ember-script'
Plugin 'heartsentwined/vim-emblem'
Plugin 'nono/vim-handlebars'
Plugin 'groenewege/vim-less'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'davidhalter/jedi-vim'
Plugin 'elzr/vim-json'
Plugin 'digitaltoad/vim-jade'
Plugin 'OrangeT/vim-csharp'
Plugin 'plasticboy/vim-markdown'
Plugin 'noc7c9/vim-iced-coffee-script'
Plugin 'fatih/vim-go.git'

" Misc
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'Raimondi/delimitMate'
Plugin 'nosami/Omnisharp'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-dispatch'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-easymotion'

call vundle#end()

filetype plugin indent on
