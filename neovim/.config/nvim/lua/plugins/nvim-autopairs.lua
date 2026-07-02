return {
    specs = {
        {
            src = 'https://github.com/windwp/nvim-autopairs',
        },
    },
    setup = function()
        require('nvim-autopairs').setup({
            disable_filetype = { 'TelescopePrompt', 'vim' },
        })
    end,
}
