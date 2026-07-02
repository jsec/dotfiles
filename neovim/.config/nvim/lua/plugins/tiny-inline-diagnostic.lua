return {
    specs = {
        {
            src = 'https://github.com/rachartier/tiny-inline-diagnostic.nvim',
        },
    },
    setup = function()
        require('tiny-inline-diagnostic').setup()
        vim.diagnostic.config({ virtual_text = false })
    end,
}
