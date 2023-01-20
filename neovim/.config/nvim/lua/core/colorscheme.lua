vim.cmd('set termguicolors')
vim.cmd('syntax enable')

local colors = require('material.colors')

require('material').setup({
  contrast = {
    sidebars = true,
    floating_windows = true,
    cursor_line = true
  },
  styles = {
    comments = {
      italic = true
    },
    functions = {
      bold = true,
      undercurl = false
    },
    keywords = {
      italic = true
    }
  },
  plugins = {
    'gitsigns',
    'hop',
    'indent-blankline',
    'neogit',
    'nvim-cmp',
    'nvim-tree',
    'nvim-web-devicons',
    'telescope'
  },
  lualine_style = 'default',
  async_loading = true,
  custom_highlights = {
<<<<<<< Updated upstream
    ['@keyword'] = { fg = colors.main.cyan, italic = true }
  }
=======
    ["@keyword"] = { fg = colors.main.cyan, italic = true },
    ["@property"] = { fg = colors.editor.fg }
  },
>>>>>>> Stashed changes
})

vim.g.material_style = 'darker'
vim.cmd('colorscheme material')
