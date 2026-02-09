return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
            javascript = {
                -- 'biome',
                'biome-organize-imports',
                'eslint'
            },
            typescript = {
                -- 'biome',
                'biome-organize-imports',
                'eslint'
            },
            python = { 'isort', 'black' },
            go = { 'gofmt', 'goimports' },
            sql = { 'sqlfluff' },
        },
        formatters = {
            biome = {
                condition = function(_, ctx)
                    return vim.fs.find({ 'biome.json' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            ['biome-organize-imports'] = {
                condition = function(_, ctx)
                    return vim.fs.find({ 'biome.json' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            eslint = {
                condition = function(_, ctx)
                    return vim.fs.find({ 'eslint.config.js' }, { path = ctx.filename, upward = true })[1]
                end
            },
            sqlfluff = {
                condition = function(_, ctx)
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
