return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
        log_level = vim.log.levels.DEBUG,
        formatters_by_ft = {
            javascript = {
                'eslint',
                'oxlint',
                'oxfmt',
            },
            javascriptreact = {
                'eslint',
                'oxlint',
                'oxfmt',
            },
            typescript = {
                'eslint',
                'oxlint',
                'oxfmt',
            },
            typescriptreact = {
                'eslint',
                'oxlint',
                'oxfmt',
            },
            go = { 'gofmt', 'goimports' },
            sql = { 'sqlfluff' },
        },
        formatters = {
            eslint = {
                condition = function(_, ctx)
                    return vim.fs.find({ 'eslint.config.js' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            oxlint = {
                condition = function(_, ctx)
                    return vim.fs.find({ '.oxlintrc.json' }, { path = ctx.filename, upward = true })[1]
                end,
            },
            oxfmt = {
                condition = function(_, ctx)
                    return vim.fs.find({ '.oxfmtrc.json' }, { path = ctx.filename, upward = true })[1]
                end,
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
