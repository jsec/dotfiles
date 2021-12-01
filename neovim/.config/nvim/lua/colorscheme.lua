vim.cmd('set termguicolors')
vim.cmd('syntax enable')
vim.cmd('set background=dark')

vim.g.tokyonight_style = 'storm'
vim.g.tokyonight_italic_comments = true

vim.cmd[[colorscheme tokyonight]]

vim.cmd('hi EndOfBuffer ctermfg=white')
vim.cmd('highlight MatchParen ctermfg=white ctermbg=black')
vim.cmd('highlight Normal ctermbg=NONE')

-- gray
vim.cmd('highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080')
-- blue
vim.cmd('highlight! CmpItemAbbrMatch guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#7aa2f7')
-- light blue
vim.cmd('highlight! CmpItemKindVariable guibg=NONE guifg=#89ddff')
vim.cmd('highlight! CmpItemKindInterface guibg=NONE guifg=#89ddff')
vim.cmd('highlight! CmpItemKindText guibg=NONE guifg=#89ddff')
-- pink
vim.cmd('highlight! CmpItemKindFunction guibg=NONE guifg=#bb9af7')
vim.cmd('highlight! CmpItemKindMethod guibg=NONE guifg=#bb9af7')
-- front
vim.cmd('highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4')
vim.cmd('highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4')
vim.cmd('highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4')
