vim.cmd('set termguicolors')
vim.cmd('syntax enable')
vim.cmd('set background=dark')

vim.g.tokyonight_style = 'night'
vim.g.tokyonight_italic_comments = 1
vim.g.tokyonight_italic_keywords = 1
vim.g.tokyonight_sidebars = { 'packer', 'nvim-tree', 'terminal' }
vim.g.tokyonight_dark_sidebar = 1
vim.g.tokyonight_dark_float = 1

vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.cmd[[colorscheme tokyonight]]

vim.cmd('hi EndOfBuffer ctermfg=white')
vim.cmd('highlight MatchParen ctermfg=white ctermbg=black')
vim.cmd('highlight Normal ctermbg=NONE')
