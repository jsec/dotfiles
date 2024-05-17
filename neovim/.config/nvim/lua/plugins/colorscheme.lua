return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        styles = {
          comments = { 'italic' },
          conditionals = { 'italic' },
          loops = { 'italic' },
          keywords = { 'italic' },
        },
        integrations = {
          barbecue = {
            dim_dirname = true,
            bold_basename = true,
            dim_context = false,
            alt_background = false
          },
          gitsigns = true,
          mason = true,
          noice = true,
          cmp = true,
          semantic_tokens = true,
          nvimtree = true,
          treesitter = true,
          treesitter_context = true,
          telescope = {
            enabled = true
          }
        }
      })

      vim.cmd('colorscheme catppuccin')
    end,
  },
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    lazy = false,
    config = function()
      require('vscode').setup({
        transparent = false,
        italic_comments = true
      })
    end
  },
  {
    "rebelot/kanagawa.nvim",
    priority = 100,
    lazy = false
  }
}
