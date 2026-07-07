local function has_config(file_list, ctx)
    return vim.fs.find(file_list, { path = ctx.filename, upward = true })[1]
end

local function has_ruff_config(ctx)
    return has_config({ 'pyproject.toml', 'ruff.toml', '.ruff.toml' }, ctx)
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
                javascript = { 'eslint', 'prettier' },
                javascriptreact = { 'eslint', 'prettier' },
                typescript = { 'eslint', 'prettier' },
                typescriptreact = { 'eslint', 'prettier' },
                go = { 'gofmt', 'goimports' },
                sql = { 'sqlfluff', 'sqlfmt' },
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
                sqlfluff = {
                    condition = function(_, ctx)
                        return has_config({ '.sqlfluff' }, ctx)
                    end,
                    inherit = false,
                    command = 'sqlfluff',
                    args = { 'fix', '--config', '.sqlfluff', '-' },
                },
                sqlfmt = {
                    condition = function(_, ctx)
                        return has_config({ 'dbt_project.yml' }, ctx)
                    end,
                    inherit = false,
                    command = 'uv',
                    args = { 'run', 'sqlfmt', '-' }
                },
                ruff_fix = {
                    condition = function(_, ctx)
                        return has_ruff_config(ctx)
                    end,
                },
                ruff_format = {
                    condition = function(_, ctx)
                        return has_ruff_config(ctx)
                    end,
                },
                ruff_organize_imports = {
                    condition = function(_, ctx)
                        return has_ruff_config(ctx)
                    end,
                },
            },
            format_on_save = {
                timeout_ms = 2000,
                lsp_fallback = true,
            },
        })
    end,
}
