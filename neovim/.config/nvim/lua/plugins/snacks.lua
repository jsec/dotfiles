return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      lazygit = { enabled = true },
      explorer = {
        replace_netrw = true,
      },
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
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  ['<c-n>'] = { 'cancel' },
                },
              },
            },
          },
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
      scroll = {
        animate = {
          duration = { step = 10, total = 200 },
          easing = 'linear',
        },
        animate_repeat = {
          delay = 100, -- delay in ms before using the repeat animation
          duration = { step = 5, total = 50 },
          easing = 'linear',
        },
        filter = function(buf)
          return vim.g.snacks_scroll ~= false
            and vim.b[buf].snacks_scroll ~= false
            and vim.bo[buf].buftype ~= 'terminal'
        end,
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
      {
        '<leader>cs',
        function()
          Snacks.picker.colorschemes()
        end,
        desc = 'Choose colorscheme',
      },
      {
        '<leader>ca',
        function()
          vim.lsp.buf.code_action()
        end,
        desc = 'Code Actions',
      },
      {
        '<c-n>',
        function()
          Snacks.picker.explorer()
        end,
      },
    },
  },
}
