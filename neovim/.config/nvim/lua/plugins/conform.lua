local function has_config(file_list, ctx)
    return vim.fs.find(file_list, { path = ctx.filename, upward = true })[1]
end

return {
    specs = {
        {
            src = 'https://github.com/stevearc/conform.nvim',
        },
    },
    setup = function()
        require('conform').setup({
            log_level = vim.log.levels.DEBUG,
            formatters_by_ft = {
                javascript = { 'eslint' },
                javascriptreact = { 'eslint' },
                json = { 'jq' },
                typescript = { 'eslint' },
                typescriptreact = { 'eslint' },
                go = { 'gofmt', 'goimports' },
                sql = { 'sqlfluff' },
                python = {
                    'ruff_fix',
                    'ruff_format',
                    'ruff_organize_imports',
                },
            },
            formatters = {
                eslint = {
                    condition = function(_, ctx)
                        return has_config({ 'eslint.config.js' }, ctx)
                    end,
                },
                oxlint = {
                    condition = function(_, ctx)
                        return has_config({ '.oxlintrc.json' }, ctx)
                    end,
                },
                oxfmt = {
                    condition = function(_, ctx)
                        return has_config({ '.oxfmtrc.json' }, ctx)
                    end,
                },
                sqlfluff = {
                    condition = function(_, ctx)
                        return has_config({ '.sqlfluff' }, ctx)
                    end,
                    inherit = false,
                    command = 'sqlfluff',
                    args = { 'fix', '--config', '.sqlfluff', '-' },
                },
                ruff_fix = {
                    condition = function(_, ctx)
                        return has_config({ 'pyproject.toml', 'ruff.toml', '.ruff.toml' }, ctx)
                    end,
                },
                ruff_format = {
                    condition = function(_, ctx)
                        return has_config({ 'pyproject.toml', 'ruff.toml', '.ruff.toml' }, ctx)
                    end,
                },
                ruff_organize_imports = {
                    condition = function(_, ctx)
                        return has_config({ 'pyproject.toml', 'ruff.toml', '.ruff.toml' }, ctx)
                    end,
                },
            },
            format_on_save = {
                timeout_ms = 1000,
                lsp_fallback = true,
            },
        })
    end,
}
