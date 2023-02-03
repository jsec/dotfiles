vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = {
        '*.ts',
        '*.js',
        '*.tsx',
        '*.jsx',
    },
    command = 'EslintFixAll',
})
