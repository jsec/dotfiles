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
    },
}
