---@type vim.lsp.Config
return {
    cmd = { 'vscode-json-language-server', '--stdio' },
    filetypes = { 'json', 'jsonc', 'json5' },
    settings = {
        schemas = {
            {
                fileMatch = { 'package.json' },
                url = 'https://json.schemastore.org/package.json',
            },
            {
                fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
                url = 'https://json.schemastore.org/tsconfig',
            },
        },
    }
}
