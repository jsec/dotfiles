local lspconfig = require('lspconfig')
local null_ls = require('null-ls')
local appearance = require('_lsp/appearance')
local handlers = require('_lsp/handlers')
local lsp_format = require('lsp-format')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp_format.setup {
  javascript = {
    indent_width = 2,
    order = { 'eslint', 'null-ls' }
  },
  html = {
    indent_width = 2
  }
}

local on_attach = function(client, bufnr)
    lsp_format.on_attach(client)
    appearance.setup()
    handlers.on_attach()
end

mason.setup()
mason_lspconfig.setup()

lspconfig.tsserver.setup {
  on_attach = function(client, bufnr)
    local ts_utils = require('nvim-lsp-ts-utils')
    ts_utils.setup({
      filter_out_diagnostics_by_code = {
        6113,
        80001,
        80002,
        7016,
        2338
      }
    })

    ts_utils.setup_client(client)
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
  root_dir = lspconfig.util.root_pattern('tsconfig.json', '.git')
}

lspconfig.eslint.setup {
  capabilities = capabilites,
  root_dir = lspconfig.util.root_pattern('.eslintrc', '.eslintrc.json', '.git'),
  settings = {
    format = { enable = true }
  }
}

null_ls.setup({
  sources = {
    require('null-ls').builtins.formatting.prettierd.with {
      filetypes = { 'html', 'json', 'javascript', 'css', 'markdown' }
    }
  },
  on_attach = on_attach
})
