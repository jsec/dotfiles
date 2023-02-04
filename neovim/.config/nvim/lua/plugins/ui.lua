return {
    { 'echasnovski/mini.trailspace', version = '*' },
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            theme = 'nordic',
            ignore_focus = { 'NvimTree' },
        },
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = 'BufReadPost',
        opts = {
            filetype_exclude = { 'help', 'lazy' },
            show_trailing_blankline_indent = true,
            show_current_context = true,
        },
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
        keys = {
            { '<c-n>', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree' },
        },
        opts = {
            filters = {
                custom = { '.git', 'node_modules', 'dist' },
            },
        },
    },
}
