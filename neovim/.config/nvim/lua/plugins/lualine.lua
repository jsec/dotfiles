return {
    specs = {
        {
            src = 'https://github.com/nvim-lualine/lualine.nvim',
            version = '221ce6b2d999187044529f49da6554a92f740a96',
        },
    },
    setup = function()
        require('lualine').setup({
            options = {
                theme = 'catppuccin-mocha',
                ignore_focus = { 'NvimTree' },
            },
        })
    end,
}
