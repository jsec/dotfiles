return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      lazygit = { enabled = true },
      indent = {
        scope = {
          animate = {
            duration = {
              step = 10,
              total = 250,
            },
          },
        },
      },
      picker = {
        ui_select = true,
        matcher = {
          fuzzy = true,
          smartcase = true,
          ignorecase = true,
          sort_empty = false,
          filename_bonus = true,
        },
        sort = {
          fields = { 'score:desc', '#text', 'idx' },
        },
        formatters = {
          file = {
            filename_first = true,
          },
          selected = {
            show_always = false,
            unselected = true,
          },
        },
        win = {
          input = {
            keys = {
              ['<Esc>'] = { 'close', mode = { 'n', 'i' } },
            },
          },
        },
      },
    },
    keys = {
      {
        '<c-p>',
        function()
          if vim.b.gitsigns_head or vim.b.gitsigns_status_dict then
            Snacks.picker.git_files({ untracked = true })
          else
            Snacks.picker.files()
          end
        end,
        desc = 'Find Files',
      },
      {
        '<leader>gd',
        function()
          Snacks.picker.lsp_definitions({ confirm = 'edit_vsplit' })
        end,
        desc = 'Goto Definition',
      },
      {
        '<leader>gr',
        function()
          Snacks.picker.lsp_references({ confirm = 'edit_vsplit' })
        end,
        nowait = true,
        desc = 'Find References',
      },
      {
        '<leader>lg',
        function()
          Snacks.picker.grep()
        end,
        desc = 'Grep',
      },
    },
  },
}
