local lspconfig = require('lspconfig')
local lsp_installer = require('nvim-lsp-installer')
local null_ls = require('null-ls')
local appearance = require('_lsp/appearance')
local handlers = require('_lsp/handlers')
local lsp_format = require('lsp-format')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp_format.setup {
  javascript = {
    indent_width = 4,
    order = { 'eslint', 'null-ls' }
  },
  typescript = {
    indent_width = 4,
    order = { 'eslint', 'null-ls' }
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

lsp_installer.on_server_ready(function (server)
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities
  }

  if server.name == 'tsserver' then
    opts.root_dir = lspconfig.util.root_pattern('tsconfig.json', '.git')
  end

  if server.name == 'eslint' then
    opts.root_dir = lspconfig.util.root_pattern('.eslintrc', '.eslintrc.json', '.git')

    opts.on_attach = function (client, bufnr)
      client.resolved_capabilities.document_formatting = true
      on_attach(client, bufnr)
    end

    opts.settings = {
      format = { enable = true }
    }
  end

  if server.name == 'tailwindcss' then
    opts.filetypes = { "html", "jade", "css", "less", "postcss", "sass", "scss", "stylus", "javascriptreact", "typescriptreact", "vue", "svelte" }
  end

  server:setup(opts)
end)

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd
  },
  on_attach = on_attach
})
