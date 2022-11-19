local lspconfig = require('lspconfig')
local appearance = require('lsp/appearance')
local handlers = require('lsp/handlers')
local lsp_format = require('lsp-format')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp_format.setup {
  javascript = {
    indent_width = 4,
    order = { 'eslint' }
  },
  typescript = {
    indent_width = 4,
    order = { 'eslint' }
  },
  html = {
    indent_width = 4
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
  on_attach = on_attach,
  capabilities = capabilites,
  root_dir = lspconfig.util.root_pattern('tsconfig.json', '.git')
}

lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilites,
  root_dir = lspconfig.util.root_pattern('.eslintrc', '.eslintrc.js', '.eslintrc.json', '.git'),
  settings = {
    format = { enable = true }
  }
}

lspconfig.tailwindcss.setup {
    filetypes = { "html", "jade", "css", "less", "postcss", "sass", "scss", "stylus", "javascriptreact", "typescriptreact", "vue", "svelte" }
}