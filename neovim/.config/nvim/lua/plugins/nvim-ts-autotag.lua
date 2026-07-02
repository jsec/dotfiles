return {
    specs = {
        {
            src = 'https://github.com/windwp/nvim-ts-autotag',
            version = '88c1453db4ba7dd24131086fe51fdf74e587d275',
        },
    },
    setup = function()
        vim.api.nvim_create_autocmd('FileType', {
            pattern = {
                'javascript',
                'typescript',
                'javascriptreact',
                'typescriptreact',
            },
            once = true,
            callback = function()
                require('nvim-ts-autotag').setup({
                    opts = {
                        enable_close = true,
                        enable_rename = true,
                        enable_close_on_slash = false,
                    },
                })
            end,
        })
    end,
}
