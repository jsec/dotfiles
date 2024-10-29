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
            alt_background = false,
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
            enabled = true,
          },
        },
      })

      vim.cmd('colorscheme catppuccin')
    end,
  },
  {
      'Mofiqul/vscode.nvim',
      lazy = false,
      priority = 1000,
      config = function()
          local colors = require('vscode.colors').get_colors()
          require('vscode').setup({
              italic_comments = true,
              group_overrides = {
                    ["@variable.builtin.typescript"] = { fg = colors.vscBlue, bg = "NONE" },
                    ["@property.method.typescript"] = { fg = colors.vscYellow, bg = "NONE" },
                    ["@constructor.typescript"] = { fg = colors.vscBlue, bg = "NONE" },
                    ["@keyword.typescript"] = { fg = colors.vscBlue, bg = "NONE" },
                    ["@keyword.return.typescript"] = { fg = colors.vscPink, bg = "NONE" },
                }
          })
      end
  },
  {
      'projekt0n/github-nvim-theme',
      name = 'github-theme',
      lazy = false,
      priority = 1000,
      config = function()
          require('github-theme').setup({
              options = {
                  styles = {
                      comments = 'italic',
                      keywords = 'italic',
                      functions = 'italic',
                      conditionals = 'italic'
                  },
                  darken = {
                      floats = true,
                      sidebars = {
                          enable = true
                      }
                  }
              }
          })
      end
  }
}
