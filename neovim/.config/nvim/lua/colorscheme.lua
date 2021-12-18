vim.cmd('set termguicolors')
vim.cmd('syntax enable')
vim.cmd('set background=dark')

vim.g.tokyonight_style = 'storm'
vim.g.tokyonight_italic_comments = true

vim.cmd[[colorscheme tokyonight]]

vim.cmd('hi EndOfBuffer ctermfg=white')
vim.cmd('highlight MatchParen ctermfg=white ctermbg=black')
vim.cmd('highlight Normal ctermbg=NONE')
