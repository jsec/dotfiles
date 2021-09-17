vim.cmd('set termguicolors')
vim.cmd('syntax enable')
vim.cmd('set background=dark')

require('github-theme').setup({
  theme_style = 'dark_default',
  function_style = 'bold',
  keyword_style = 'NONE',
  comment_style = 'italic',
  dark_sidebar = true,
  colors = {hint = "orange", error = "#ff0000"}
})

vim.cmd('hi EndOfBuffer ctermfg=white')
vim.cmd('highlight MatchParen ctermfg=white ctermbg=black')
vim.cmd('highlight Normal ctermbg=NONE')
