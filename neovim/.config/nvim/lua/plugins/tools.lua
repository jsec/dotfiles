return {
    {
        'lewis6991/gitsigns.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        opts = {
            signs = {
                add = { text = '│' },
                change = { text = '│' },
                delete = { text = '│' },
                topdelete = { text = '│' },
                changedelete = { text = '│' },
                untracked = { text = '│' },
            },
            signcolumn = true,
            numhl = false,
        },
    },
    { 'tpope/vim-fugitive' }
}
