return {
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            theme = 'nordic',
            ignore_focus = { 'NvimTree' }
        }
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = 'BufReadPost',
        opts = {
            filetype_exclude = { 'help', 'lazy' },
            show_trailing_blankline_indent = false,
            show_current_context = false
        }
    },
    {
        'nvim-tree/nvim-tree.lua',
        keys = {
            { '<c-n>', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree' }
        },
        opts = {
            filters = {
                custom = { '.git', 'node_modules', 'dist' }
            }
        }
    }
}
