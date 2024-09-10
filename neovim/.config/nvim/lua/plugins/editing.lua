return {
  {
    'windwp/nvim-autopairs',
    opts = {
      disable_filetype = { 'TelescopePrompt', 'vim' },
    },
  },
  {
    'b3nj5m1n/kommentary',
    keys = {
      { '<leader>cc', '<Plug>kommentary_line_increase' },
      { '<leader>cc', '<Plug>kommentary_visual_increase<C-c>', mode = 'x' },
      { '<leader>cu', '<Plug>kommentary_line_decrease' },
      { '<leader>cu', '<Plug>kommentary_visual_decrease<C-c>', mode = 'v' },
    },
  },
  {
    'ggandor/leap.nvim',
    config = function()
      require('leap').add_default_mappings()
    end,
  },
  {
    'folke/todo-comments.nvim',
    opts = {
      highlight = {
        before = '',
        keyword = 'wide_bg',
        after = '',
      },
    },
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'BufEnter',
    dependencies = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
      'onsails/lspkind-nvim',
      'rafamadriz/friendly-snippets',
    },
    config = function()
      local cmp = require('cmp')
      local lspkind = require('lspkind')
      local luasnip = require('luasnip')
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp_util = require('util.cmp')

      require('luasnip.loaders.from_vscode').lazy_load()

      cmp.setup({
        completion = {
          completeopt = 'menu,menuone,noinsert',
        },
        formatting = {
          format = lspkind.cmp_format({
            with_text = true,
            menu = {
              buffer = '[Buffer]',
              nvim_lsp = '[LSP]',
              luasnip = '[LuaSnip]',
              nvim_lua = '[Lua]',
            },
          }),
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.close(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            elseif cmp_util.has_words_before() then
              cmp.complete()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'buffer' },
        },
      })

      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
    end,
  },
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('neoscroll').setup()
    end,
  },
  {
      'windwp/nvim-ts-autotag',
      ft = {
          'javascript',
          'typescript',
          'javascriptreact',
          'typescriptreact'
      },
      config = function()
          require('nvim-ts-autotag').setup({
              opts = {
                  enable_close = true,
                  enable_rename = true,
                  enable_close_on_slash = false
              }
          })
      end
  }
}
