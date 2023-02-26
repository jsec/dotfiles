return {
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local nordic = require('nordic')
            nordic.setup({
                telescope = {
                    style = 'classic',
                },
            })
            nordic.load()
        end,
    },
}
