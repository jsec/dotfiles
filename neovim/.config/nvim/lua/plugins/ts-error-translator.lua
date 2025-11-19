return {
    'dmmulroy/ts-error-translator.nvim',
    config = function()
        require('ts-error-translator').setup({
            auto_attach = true,
            servers = {
                'vtsls'
            }
        })
    end
}
