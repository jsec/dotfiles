local function uses_typescript(root_dir)
    if vim.uv.fs_stat(vim.fs.joinpath(root_dir, 'oxlint.config.ts')) then
        return true
    end
    local fn = vim.fs.joinpath(root_dir, '.oxlintrc.json')
    for line in io.lines(fn) do
        if line:find('typescript') then
            return true
        end
    end
    return false
end

---@type vim.lsp.Config
return {
    cmd = function(dispatchers, config)
        local bin = vim.fs.joinpath(config.root_dir, 'node_modules', '.bin', 'oxlint')
        if not vim.uv.fs_stat(bin) then
            bin = 'oxlint'
        end
        return vim.lsp.rpc.start({ bin, '--lsp' }, dispatchers, { cwd = config.root_dir })
    end,
    filetypes = {
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'astro',
    },
    root_markers = { '.oxlintrc.json', 'oxlint.config.ts' },
    workspace_required = true,
    on_attach = function(client, bufnr)
        vim.api.nvim_buf_create_user_command(bufnr, 'LspOxlintFixAll', function()
            client:exec_cmd({
                title = 'Apply Oxlint automatic fixes',
                command = 'oxc.fixAll',
                arguments = { { uri = vim.uri_from_bufnr(bufnr) } },
            })
        end, {
            desc = 'Apply Oxlint automatic fixes',
        })
    end,
    settings = { fixKind = 'safe_fix' },
    before_init = function(init_params, config)
        local settings = config.settings or {}
        local tsgolint = vim.fs.joinpath(config.root_dir, 'node_modules', '.bin', 'tsgolint')
        if settings.typeAware == nil and vim.uv.fs_stat(tsgolint) then
            local ok, res = pcall(uses_typescript, config.root_dir)
            if ok and res then
                settings = vim.tbl_extend('force', settings, { typeAware = true })
            end
        end
        local init_options = config.init_options or {}
        init_options.settings =
            vim.tbl_extend('force', init_options.settings or {} --[[@as table]], settings)

        init_params.initializationOptions = init_options
    end,
}
