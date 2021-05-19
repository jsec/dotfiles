-- General settings
vim.cmd('set laststatus=2')
vim.cmd('set encoding=utf-8')
vim.cmd('set autoread')
vim.cmd('set wildmenu')
vim.cmd('set wrap')
vim.cmd('set backupdir=~/.config/nvim/backup//')
vim.cmd('set directory=~/.config/nvim/swap//')
vim.cmd('set undodir=~/.config/nvim/undo//')
vim.cmd('set backspace+=start,eol,indent')
vim.cmd('set nu')
vim.cmd('set so=10')
vim.cmd('set mouse=a')
vim.cmd('set vb')
vim.cmd('set ignorecase')
vim.cmd('set smartcase')
vim.cmd('set autoindent')
vim.cmd('set shiftwidth=4')
vim.cmd('set tabstop=4')
vim.cmd('set expandtab')
vim.cmd('set ignorecase')
vim.cmd('set incsearch')
vim.cmd('set hlsearch')
vim.cmd('set splitright')
vim.cmd('set cmdheight=2')
vim.cmd('set updatetime=300')
vim.cmd('set shortmess+=c')

-- Ignores
vim.cmd('set wildignore+=**/node_modules')
vim.cmd('set wildignore+=**/tmp')
vim.cmd('set wildignore+=**/dist')
vim.cmd('set wildignore+=**/.git')
vim.cmd('set wildignore+=**/bin')

-- Filetype settings
-- Maybe move this to its own file? Or break it out by filetype?
vim.cmd('autocmd FileType coffee setl sw=2 sts=2 et')
vim.cmd('autocmd FileType typescript setl sw=2 sts=2 et')
vim.cmd('autocmd FileType stylus setl sw=2 sts=2 et')
vim.cmd('autocmd FileType javascript setl sw=2 sts=2 et')
vim.cmd('autocmd FileType json setl sw=2 sts=2 et')

-- Trim whitespace
vim.cmd('autocmd FileType * EnableStripWhitespaceOnSave')
vim.g.strip_whitespace_confirm = 0

-- Python hosts
vim.g.python2_host_prog = "/usr/local/bin/python2"
vim.g.python3_host_prog = "/usr/local/bin/python3"
