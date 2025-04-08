return {
    'saghen/blink.cmp',
    dependencies = {
        'rafamadriz/friendly-snippets',
        'onsails/lspkind-nvim',
    },
    version = '1.*',
    opts = {
        keymap = { preset = 'super-tab' },
        appearance = {
            nerd_font_variant = 'mono',
        },
        completion = {
            documentation = {
                auto_show = true,
                window = {
                    border = 'single',
                },
            },
            menu = {
                border = 'single',
            },
        },
        signature = {
            window = {
                border = 'single',
            },
        },
        sources = {
            default = {
                'lsp',
                'buffer',
                'path',
                'snippets',
            },
        },
        fuzzy = {
            implementation = 'prefer_rust_with_warning',
            sorts = {
                'exact',
                'score',
                'sort_text',
            },
        },
    },
    opts_extend = { 'sources.default' },
}
