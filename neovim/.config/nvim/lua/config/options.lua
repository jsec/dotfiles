vim.g.mapleader = ','

vim.opt.autoread = true
vim.opt.wildmenu = true
vim.opt.laststatus = 2
vim.opt.encoding = 'utf-8'
vim.opt.laststatus = 3
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.wrap = true
vim.opt.smartcase = true
vim.opt.autoindent = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.splitright = true
vim.opt.cmdheight = 1
vim.opt.updatetime = 300
vim.opt.termguicolors = true
vim.opt.completeopt = { 'menuone', 'noselect' }
vim.opt.scrolloff = 10
vim.opt.mouse = 'a'
vim.opt.visualbell = false
vim.opt.nu = true
vim.opt.wildignore = {
    '**/node_modules',
    '**/tmp',
    '**/dist',
    '**/.git',
    '**/bin',
}

-- State directories
local cache_dir = vim.env.HOME .. '/.cache/nvim/'

vim.opt.backup = true
vim.opt.backupdir = cache_dir .. 'backup/'
vim.opt.directory = cache_dir .. 'swap/'
vim.opt.undofile = true
vim.opt.undodir = cache_dir .. 'undo/'
