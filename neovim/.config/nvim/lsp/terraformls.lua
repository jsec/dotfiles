---@type vim.lsp.Config
return {
    cmd = { 'terraform-ls', 'serve', '-log-file', '/dev/null' },
    filetypes = {
        'terraform',
        'terraform-vars',
    },
    root_markers = {
        '.terraform',
        '.git',
    },
}
