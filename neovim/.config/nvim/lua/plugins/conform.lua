return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
            javascript = {
                'eslint',
                'biome',
                'biome-organize-imports',
            },
            javascriptreact = {
                'eslint',
                'biome',
                'biome-organize-imports',
            },
            typescript = {
                'eslint',
                'biome',
                'biome-organize-imports',
            },
            typescriptreact = {
                'eslint',
                'biome',
                'biome-organize-imports',
            },
            go = { 'gofmt', 'goimports' },
            sql = { 'sqlfluff' },
        },
        formatters = {
            dprint = {
                condition = function(self, ctx)
                    return vim.fs.find({ 'dprint.json' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            biome = {
                condition = function(self, ctx)
                    return vim.fs.find({ 'biome.json' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            ['biome-organize-imports'] = {
                condition = function(self, ctx)
                    return vim.fs.find({ 'biome.json' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            sqlfluff = {
                condition = function(self, ctx)
                    return vim.fs.find({ '.sqlfluff' }, { path = ctx.filename, upward = true })[1]
                end,
                inherit = false,
                command = 'sqlfluff',
                args = { 'fix', '--config', '.sqlfluff', '-' },
            },
        },
        format_on_save = {
            timeout_ms = 1000,
            lsp_fallback = true,
        },
    },
}
