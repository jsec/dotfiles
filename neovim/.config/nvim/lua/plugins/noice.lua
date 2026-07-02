return {
    specs = {
        {
            src = 'https://github.com/folke/noice.nvim',
            version = '7bfd942445fb63089b59f97ca487d605e715f155',
        },
        {
            src = 'https://github.com/MunifTanjim/nui.nvim',
            version = 'de740991c12411b663994b2860f1a4fd0937c130',
        },
    },
    setup = function()
        require('noice').setup({
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
        })
    end,
}
