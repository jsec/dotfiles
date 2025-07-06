return {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = {
        'mason-org/mason.nvim',
    },
    opts = {
        ensure_installed = {
            'ruff',
            'black',
            'isort',
            'stylua',
            'luacheck',
            'gopls',
            'golangci-lint',
        },
        run_on_start = true,
        debounce_hours = 48,
    },
}
