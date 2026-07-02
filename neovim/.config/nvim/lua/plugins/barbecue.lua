return {
    specs = {
        {
            src = 'https://github.com/utilyre/barbecue.nvim',
            name = 'barbecue',
        },
        {
            src = 'https://github.com/SmiteshP/nvim-navic',
        },
        {
            src = 'https://github.com/nvim-tree/nvim-web-devicons',
        },
    },
    setup = function()
        require('barbecue').setup({
            theme = 'catppuccin',
        })
    end,
}
