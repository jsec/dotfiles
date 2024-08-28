return {
  { 'echasnovski/mini.trailspace', version = '*' },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      theme = 'catppuccin',
      ignore_focus = { 'NvimTree' },
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    event = 'BufReadPost',
    config = function()
      require('ibl').setup({
        indent = {
          char = '▏',
        },
        scope = {
          enabled = true,
          show_start = false,
          show_end = false,
        },
      })
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      { '<c-n>', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree' },
    },
    opts = {
      filters = {
        custom = { '^.git$', 'node_modules', 'dist' },
      },
      view = {
          width = 35
      }
    },
  },
  {
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    dependencies = {
      'SmiteshP/nvim-navic',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('barbecue').setup({
        theme = 'catppuccin',
      })
    end,
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    opts = {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = true,
      },
    },
  },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
}
