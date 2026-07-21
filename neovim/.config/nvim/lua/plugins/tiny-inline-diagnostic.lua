return {
    specs = {
        {
            src = 'https://github.com/rachartier/tiny-inline-diagnostic.nvim',
        },
    },
    setup = function()
        require('tiny-inline-diagnostic').setup({
            options = {
                throttle = 60,
                enable_on_insert = false,
                multilines = { enabled = false },
                show_all_diags_on_cursorline = false,
            }
        })

        vim.diagnostic.config({ virtual_text = false })
    end,
}
