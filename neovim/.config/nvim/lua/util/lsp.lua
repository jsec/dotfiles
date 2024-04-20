local M = {}

local set_diagnostic_signs = function()
  local signs = { Error = ' ', Warn = ' ', Hint = ' ', Information = ' ' }

  for type, icon in pairs(signs) do
    local hl = 'DiagnosticSign' .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
  end
end

local set_handlers = function()
  vim.lsp.handlers['textDocument/publishDiagnostics'] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = {
        source = 'always',
      },
    })
end

M.on_attach = function(client, bufnr)
  client.server_capabilities.semanticTokensProvider = nil
  set_diagnostic_signs()
  set_handlers()
end

return M
