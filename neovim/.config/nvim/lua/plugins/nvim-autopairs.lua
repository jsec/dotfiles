return {
    specs = {
        {
            src = 'https://github.com/windwp/nvim-autopairs',
            version = '7b9923abad60b903ece7c52940e1321d39eccc79',
        },
    },
    setup = function()
        require('nvim-autopairs').setup({
            disable_filetype = { 'TelescopePrompt', 'vim' },
        })
    end,
}
