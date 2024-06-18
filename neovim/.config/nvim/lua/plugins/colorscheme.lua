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
  -- carbonfox appears to be a winner, maybe duskfox too
    "EdenEast/nightfox.nvim",
    priority = 1000,
    lazy = false
  },
  {
    'shaunsingh/nord.nvim',
    priority = 1000,
    lazy = false
  },
  {
    'rebelot/kanagawa.nvim', -- You can replace this with your favorite colorscheme
    lazy = false, -- We want the colorscheme to load immediately when starting Neovim
    priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
  }
}
