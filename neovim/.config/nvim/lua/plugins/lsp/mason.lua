return {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = {
        'mason-org/mason.nvim',
        'mason-org/mason-lspconfig.nvim',
    },
    opts = {
        ensure_installed = {
            'vtsls',
            'ruff',
            'black',
            'isort',
            'prettierd',
            'stylua',
            'luacheck',
            'eslint_d',
            'gopls',
            'golangci-lint',
        },
        run_on_start = true,
        debounce_hours = 48,
    },
}
