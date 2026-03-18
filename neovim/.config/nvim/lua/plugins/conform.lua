return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
            javascript = {
                'biome-check',
                'eslint',
                stop_after_first = true,
            },
            typescript = {
                'biome-check',
                'eslint',
                stop_after_first = true,
            },
            python = {
                'ruff_fix',
                'ruff_format',
                'ruff_organize_imports',
            },
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
                    return vim.fs.find(
                        { 'eslint.config.js' },
                        { path = ctx.filename, upward = true }
                    )[1]
                end,
            },
            sqlfluff = {
                inherit = false,
                command = 'sqlfluff',
                args = { 'fix', '--config', '/Users/jarrod.seccombe/.sqlfluff', '-' },
            },
            ruff_fix = {
                condition = function(_, ctx)
                    return vim.fs.find({ 'ruff.toml' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            ruff_format = {
                condition = function(_, ctx)
                    return vim.fs.find({ 'ruff.toml' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            ruff_organize_imports = {
                condition = function(_, ctx)
                    return vim.fs.find({ 'ruff.toml' }, { path = ctx.filename, upward = true })[1]
                end,
            },
        },
        format_on_save = {
            timeout_ms = 1000,
            lsp_fallback = true,
        },
    },
}
