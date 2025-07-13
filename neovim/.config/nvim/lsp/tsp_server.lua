---@type vim.lsp.Config
return {
  cmd = { 'tsp-server', '--stdio' },
  filetypes = { 'typespec' },
  root_markers = { 'tspconfig.yaml', '.git' },
}
