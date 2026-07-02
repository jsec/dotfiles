return {
    specs = {
        {
            src = 'https://github.com/nvim-lualine/lualine.nvim',
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
