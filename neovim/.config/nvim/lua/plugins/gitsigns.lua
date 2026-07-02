return {
    specs = {
        {
            src = 'https://github.com/lewis6991/gitsigns.nvim',
            version = '2038c666bd9d8a0b7349a0b6ee00dc83104b9ecf',
        },
        {
            src = 'https://github.com/nvim-lua/plenary.nvim',
            version = '74b06c6c75e4eeb3108ec01852001636d85a932b',
        },
        {
            src = 'https://github.com/tpope/vim-fugitive',
            version = '3b753cf8c6a4dcde6edee8827d464ba9b8c4a6f0',
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
