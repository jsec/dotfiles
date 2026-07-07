---@type vim.lsp.Config
return {
    cmd = {
        'node',
        '--max-old-space-size=8192',
        vim.fn.exepath('vscode-eslint-language-server'),
        '--stdio',
    },
    filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
    },
    root_markers = {
        '.eslintrc.js',
        'eslint.config.js',
        'eslint.config.ts',
        'eslint.config.mjs'
    },
    workspace_required = true,
    settings = {
        validate = 'on',
        packageManager = nil,
        experimental = {},
        codeActionOnSave = { enable = true, mode = 'all' },
        format = true,
        quiet = false,
        onIgnoredFiles = 'off',
        options = {},
        rulesCustomizations = {},
        run = 'onSave',
        problems = { shortenToSingleLine = false },
        nodePath = '',
        workingDirectories = { mode = 'auto' },
        codeAction = {
            disableRuleComment = { enable = true, location = 'separateLine' },
            showDocumentation = { enable = true },
        },
    },
    before_init = function(params, config)
        config.settings.workspaceFolder = {
            uri = params.rootPath,
            name = vim.fn.fnamemodify(params.rootPath, ':t'),
        }
    end,
}
