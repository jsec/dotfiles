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
      'rebelot/kanagawa.nvim',
      lazy = false,
      priority = 1000,
      config = function()
        require('kanagawa').setup({
            compile = true,
            commentStyle = { italic = true },
            keywordStyle = { italic = true },
            transparent = false,
            dimINactive = false,
            terminalColors = true,
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none"
                        }
                    }
                }
            },
            overrides = function(colors)
                local theme = colors.theme
                return {
                    Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },  -- add `blend = vim.o.pumblend` to enable transparency
                    PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                    PmenuSbar = { bg = theme.ui.bg_m1 },
                    PmenuThumb = { bg = theme.ui.bg_p2 },
                    TelescopeTitle = { fg = theme.ui.special, bold = true },
                    TelescopePromptNormal = { bg = theme.ui.bg_p1 },
                    TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
                    TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
                    TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
                    TelescopePreviewNormal = { bg = theme.ui.bg_dim },
                    TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
                }
            end
        })
      end
  }
}
