---@type vim.lsp.Config
return {
    cmd = { 'vscode-eslint-language-server', '--stdio' },
    filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'graphql',
    },
    root_dir = function(bufnr, on_dir)
        local markers = {
            'eslint.config.js',
            'eslint.config.ts',
            'eslint.config.mjs',
            'eslint.config.cjs',
            '.eslintrc',
            '.eslintrc.js',
            '.eslintrc.cjs',
            '.eslintrc.json',
            '.eslintrc.yaml',
            '.eslintrc.yml',
        }
        local fname = vim.api.nvim_buf_get_name(bufnr)
        local found = vim.fs.find(markers, { path = fname, upward = true })[1]
        if found then
            on_dir(vim.fs.dirname(found))
        end
    end,
    settings = {
        validate = 'on',
        packageManager = nil,
        useESLintClass = true,
        experimental = { useFlatConfig = true },
        codeActionOnSave = { enable = true, mode = 'all' },
        format = true,
        quiet = false,
        onIgnoredFiles = 'off',
        options = {},
        rulesCustomizations = {},
        run = 'onType',
        problems = { shortenToSingleLine = false },
        nodePath = '',
        workingDirectory = { mode = 'auto' },
        codeAction = {
            disableRuleComment = { enable = true, location = 'separateLine' },
            showDocumentation = { enable = true },
        },
    },
    flags = {
        allow_incremental_sync = false,
        debounce_text_changes = 1000,
    },
    before_init = function(params, config)
        config.settings.workspaceFolder = {
            uri = params.rootPath,
            name = vim.fn.fnamemodify(params.rootPath, ':t'),
        }
    end,
}
