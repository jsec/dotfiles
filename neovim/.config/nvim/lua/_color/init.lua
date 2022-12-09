--[[ vim.g.gruvbox_material_enable_bold=1
vim.g.gruvbox_material_better_performance=1
vim.g.gruvbox_material_enable_italic=1
vim.cmd('colorscheme gruvbox-material') ]]

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
  async_loading = true
})

vim.g.material_style = 'darker'
vim.cmd('colorscheme material')
