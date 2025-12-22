return {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
        'rafamadriz/friendly-snippets',
        'onsails/lspkind.nvim'
    },
    config = function()
        require('lspkind').init({
            mode = 'symbol_text',
            symbol_map = {
                Array = " ",
                Boolean = " ",
                Class = " ",
                Color = " ",
                Constant = " ",
                Constructor = " ",
                Enum = " ",
                EnumMember = " ",
                Event = " ",
                Field = " ",
                File = " ",
                Folder = "󰉋 ",
                Function = " ",
                Interface = " ",
                Key = " ",
                Keyword = " ",
                Method = " ",
                Module = " ",
                Namespace = " ",
                Null = "󰟢",
                Number = " ",
                Object = " ",
                Operator = " ",
                Package = " ",
                Property = " ",
                Reference = " ",
                Snippet = " ",
                String = " ",
                Struct = " ",
                Text = " ",
                TypeParameter = " ",
                Unit = " ",
                Value = " ",
                Variable = " ",
            },
        })

        local opts = {
            keymap = {
                preset = 'default',
                ['<CR>'] = { 'select_and_accept', 'fallback' }
            },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = {
                documentation = {
                    auto_show = true
                },
                menu = {
                    draw = {
                        components = {
                            kind_icon = {
                                text = function(item)
                                    local kind = require("lspkind").symbol_map[item.kind] or ""
                                    return kind .. ""
                                end
                            }
                        }
                    }
                }
            },
            sources = {
                default = { 'lsp', 'path', 'buffer', 'snippets' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" },
        }

        require('blink.cmp').setup(opts)
    end,
}
