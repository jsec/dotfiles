vim.cmd('set termguicolors')
vim.cmd('syntax enable')
vim.cmd('set background=dark')

vim.g.vscode_style = "dark"
-- Enable italic comment
vim.g.vscode_italic_comment = 1
vim.cmd[[colorscheme vscode]]

vim.cmd("let &fcs='eob: '")
vim.cmd('highlight MatchParen ctermfg=white ctermbg=black')
vim.cmd('highlight Normal ctermbg=NONE')

