return {
    specs = {
        {
            src = 'https://github.com/utilyre/barbecue.nvim',
            name = 'barbecue',
            version = '3e31404f0b93a2c30d151abf0648650ac811c664',
        },
        {
            src = 'https://github.com/SmiteshP/nvim-navic',
            version = 'f5eba192f39b453675d115351808bd51276d9de5',
        },
        {
            src = 'https://github.com/nvim-tree/nvim-web-devicons',
            version = 'dfbfaa967a6f7ec50789bead7ef87e336c1fa63c',
        },
    },
    setup = function()
        require('barbecue').setup({
            theme = 'catppuccin',
        })
    end,
}
