return {
    { 'windwp/nvim-autopairs' },
    {
        'b3nj5m1n/kommentary',
        keys = {
            { '<leader>cc', '<Plug>kommentary_line_increase', desc = 'Comment Line' },
            { '<leader>cc', '<Plug>kommentary_line_increase', mode = 'x', desc = 'Comment Line' },
            { '<leader>cu', '<Plug>kommentary_line_decrease', desc = 'Uncomment Line' },
            { '<leader>cu', '<Plug>kommentary_line_decrease', mode = 'x', desc = 'Comment Line' }
        }
    },
    {
        'folke/todo-comments.nvim',
        opts = {
            highlight = {
                before = "",
                keyword = "wide_bg",
                after = ""
            }
        }
    },
    -- LEAP
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
            'onsails/lspkind-nvim',
            'rafamadriz/friendly-snippets'
        },
        config = function()
            local cmp = require('cmp')
            local lspkind = require('lspkind')
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')

            require('luasnip.loaders.from_vscode').lazy_load()

            cmp.setup({
              completion = {
                completeopt = 'menu,menuone,noinsert',
              },
              formatting = {
                format = lspkind.cmp_format({
                  with_text = true,
                  menu = ({
                    buffer = "[Buffer]",
                    nvim_lsp = "[LSP]",
                    luasnip = "[LuaSnip]",
                    nvim_lua = "[Lua]"
                  })
                })
              },
              window = {
                documentation = {
                  border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
                }
              },
              snippet = {
                expand = function(args)
                  require('luasnip').lsp_expand(args.body)
                end
              },
              mapping = cmp.mapping.preset.insert({
                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.close(),
                ['<CR>'] = cmp.mapping.confirm({ select = true })
              }),
              sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' }
              }
            })

            cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done({ map_char = { tex = '' } }))
        end
    }
}
