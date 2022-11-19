local colors = require('utils.colors')
local highlight = require('utils.highlight')

vim.cmd('set termguicolors')
vim.cmd('syntax enable')
vim.cmd('set background=dark')

require('github-theme').setup({
    theme_style = 'dark'
})

vim.cmd("let &fcs='eob: '")
vim.cmd('highlight MatchParen ctermfg=white ctermbg=black')
vim.cmd('highlight Normal ctermbg=NONE')
