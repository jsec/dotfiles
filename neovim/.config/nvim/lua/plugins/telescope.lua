return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
          require('telescope').load_extension('ui-select')
        end,
      },
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        config = function()
          require('telescope').load_extension('fzf')
        end,
      },
    },
    keys = {
      { '<c-p>', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
      { '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', desc = 'Code Actions' },
      { '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', desc = 'Go To Definition' },
      { '<leader>gr', '<cmd>Telescope lsp_references<cr>', desc = 'Find References' },
      { '<leader>lg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
    },
    opts = {
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = 'smart_case',
        },
      },
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
        },
        prompt_prefix = '> ',
        selection_caret = '> ',
        entry_prefix = '  ',
        initial_mode = 'insert',
        selection_strategy = 'reset',
        sorting_strategy = 'descending',
        layout_config = {
          width = 0.75,
          horizontal = {
            preview_width = 0.5,
          },
          prompt_position = 'bottom',
          preview_cutoff = 120,
        },
        file_ignore_patterns = { '.git' },
        path_display = { 'shorten' },
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    },
  },
}
