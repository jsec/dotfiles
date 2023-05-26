return {
    { 'echasnovski/mini.trailspace', version = '*' },
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            theme = 'catppuccin',
            ignore_focus = { 'NvimTree' },
            winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {
                    { 'filename', path = 1 },
                },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            inactive_winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {
                    { 'filename', path = 1 },
                },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
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
            'nvim-tree/nvim-web-devicons',
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
    {
        'j-hui/fidget.nvim',
        event = 'BufEnter',
        config = function()
            require('fidget').setup()
        end
    }
}
