vim.lsp.config('*', {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    on_attach = require('util.lsp').on_attach
})

vim.lsp.enable({
    'vtsls',
    'eslint',
    'ruff',
    'basedpyright',
    'gopls',
})
