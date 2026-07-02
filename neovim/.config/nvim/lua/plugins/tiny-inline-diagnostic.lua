return {
    specs = {
        {
            src = 'https://github.com/rachartier/tiny-inline-diagnostic.nvim',
            version = 'e930d0a46031645040d5492595b46cdf6ab3514f',
        },
    },
    setup = function()
        require('tiny-inline-diagnostic').setup()
        vim.diagnostic.config({ virtual_text = false })
    end,
}
