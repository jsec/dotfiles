return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    keys = {
        { '<c-n>', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree' },
    },
    opts = {
        filters = {
            custom = { '^.git$', 'node_modules', 'dist' },
        },
        git = {
            timeout = 800,
        },
        update_focused_file = {
            enable = true,
            update_root = {
                enable = false,
            },
        },
        view = {
            width = 35,
        },
    },
}
