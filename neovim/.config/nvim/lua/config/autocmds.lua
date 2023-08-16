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

local format_sync_group = vim.api.nvim_create_augroup('GoFormat', {})
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*.go',
    callback = function()
        require('go.format').goimport()
    end,
    group = format_sync_group
})
