return {
    specs = {
        {
            src = 'https://github.com/saghen/blink.cmp',
            version = '78336bc89ee5365633bcf754d93df01678b5c08f',
        },
        {
            src = 'https://github.com/rafamadriz/friendly-snippets',
            version = '6cd7280adead7f586db6fccbd15d2cac7e2188b9',
        },
        {
            src = 'https://github.com/onsails/lspkind.nvim',
            version = 'c7274c48137396526b59d86232eabcdc7fed8a32',
        },
    },
    setup = function()
        require('lspkind').init({
            mode = 'symbol_text',
            symbol_map = {
                Array = ' ',
                Boolean = ' ',
                Class = ' ',
                Color = ' ',
                Constant = ' ',
                Constructor = ' ',
                Enum = ' ',
                EnumMember = ' ',
                Event = ' ',
                Field = ' ',
                File = ' ',
                Folder = '󰉋 ',
                Function = ' ',
                Interface = ' ',
                Key = ' ',
                Keyword = ' ',
                Method = ' ',
                Module = ' ',
                Namespace = ' ',
                Null = '󰟢',
                Number = ' ',
                Object = ' ',
                Operator = ' ',
                Package = ' ',
                Property = ' ',
                Reference = ' ',
                Snippet = ' ',
                String = ' ',
                Struct = ' ',
                Text = ' ',
                TypeParameter = ' ',
                Unit = ' ',
                Value = ' ',
                Variable = ' ',
            },
        })

        local opts = {
            keymap = {
                preset = 'default',
                ['<CR>'] = { 'select_and_accept', 'fallback' },
            },
            appearance = {
                nerd_font_variant = 'mono',
            },
            completion = {
                documentation = {
                    auto_show = true,
                    window = { border = 'rounded' },
                },
                menu = {
                    border = 'rounded',
                    draw = {
                        columns = {
                            { 'kind_icon', 'label', gap = 1 },
                            { 'kind' },
                        },
                        components = {
                            kind_icon = {
                                text = function(item)
                                    local kind = require('lspkind').symbol_map[item.kind] or ''
                                    return kind .. ''
                                end,
                                highlight = function(ctx)
                                    return ctx.kind_hl
                                end,
                            },
                            label = {
                                text = function(item)
                                    return item.label
                                end,
                                highlight = 'CmpItemAbbr',
                            },
                            kind = {
                                text = function(item)
                                    return item.kind
                                end,
                                highlight = function(ctx)
                                    return ctx.kind_hl
                                end,
                            },
                        },
                    },
                },
            },
            sources = {
                default = { 'lsp', 'path', 'buffer' },
                providers = {
                    snippets = {
                        opts = {
                            friendly_snippets = false,
                        },
                    },
                },
            },
            fuzzy = { implementation = 'prefer_rust_with_warning' },
        }

        require('blink.cmp').setup(opts)
    end,
}
