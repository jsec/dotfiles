return {
    specs = {
        {
            src = 'https://github.com/lewis6991/gitsigns.nvim',
        },
        {
            src = 'https://github.com/nvim-lua/plenary.nvim',
        },
        {
            src = 'https://github.com/tpope/vim-fugitive',
        },
    },
    setup = function()
        require('gitsigns').setup({
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
        })
    end,
}
