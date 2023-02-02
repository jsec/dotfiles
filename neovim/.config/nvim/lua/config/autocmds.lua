-- TODO: Fix this
vim.api.nvim_create_autocmd('BufWritePre', {
    command = 'lua MiniTrailspace.trim()'
})
