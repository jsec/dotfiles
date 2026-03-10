---@type vim.lsp.Config
return {
    cmd = function(dispatchers, config)
        local cmd = 'oxfmt'
        local local_cmd = (config or {}).root_dir and config.root_dir .. '/node_modules/.bin/oxfmt'

        if local_cmd and vim.fn.executable(local_cmd) == 1 then
            cmd = local_cmd
        end

        return vim.lsp.rpc.start({ cmd, '--lsp' }, dispatchers)
    end,
    filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'toml',
        'json',
        'jsonc',
        'json5',
        'yaml',
        'html',
        'vue',
        'handlebars',
        'css',
        'scss',
        'less',
        'graphql',
        'markdown',
    },
    root_markers = { '.oxfmtrc.json' },
    workspace_required = true,
}
