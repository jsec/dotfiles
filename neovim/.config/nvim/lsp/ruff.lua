---@type vim.lsp.Config
return {
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = {
    'pyproject.toml',
    'ruff.toml',
    '.ruff.toml',
    '.git',
  },
  settings = {
    organizeImports = true,
  },
  on_attach = function(client)
    client.server_capabilities.hoverProvider = false
  end,
}
