---@type vim.lsp.Config
return {
    cmd = { 'vscode-eslint-language-server', '--stdio' },
    filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'graphql'
    },
    root_markers = {
        'eslint.config.js',
        'eslint.config.ts',
        'eslint.config.mjs',
        '.eslintrc',
        '.eslintrc.js',
        '.eslintrc.json'
    },
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
            showDocumentation = { enable = true }
        }
    },
    before_init = function(params, config)
        config.settings.workspaceFolder = {
            uri = params.rootPath,
            name = vim.fn.fnamemodify(params.rootPath, ':t')
        }
    end
}
