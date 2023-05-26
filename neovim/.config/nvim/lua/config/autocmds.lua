vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {
        '*.ts',
        '*.js',
        '*.tsx',
        '*.jsx',
    },
    callback = function()
        require('lint').try_lint()
        vim.cmd([FormatWrite])
    end
})
