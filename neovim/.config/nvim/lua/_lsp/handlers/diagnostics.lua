local M = {}

local ignored_error_codes = {
  [6133] = true,
  [80001] = true,
  [80002] = true,
  [7016] = true,
  [2339] = true
}

function M.on_attach()
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = {
      source = "always"
    }
  })
end


return M
