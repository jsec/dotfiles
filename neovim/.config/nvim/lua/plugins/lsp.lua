return {
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = {
      'williamboman/mason.nvim',
    },
    opts = {
      ensure_installed = {
        'vtsls',
        'pyright',
        'ruff',
        'black',
        'isort',
        'stylua',
        'luacheck',
        'eslint-lsp',
      },
      run_on_start = true,
      debounce_hours = 48,
    },
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local on_attach = require('util.lsp').on_attach
      require('mason').setup()

      lspconfig.vtsls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        root_dir = lspconfig.util.root_pattern(
          'tsconfig.json',
          'jsconfig.json',
          'package.json',
          '.git'
        ),
        settings = {
          format = { enable = false },
          vtsls = {
            autoUseWorkspaceTsdk = true,
            experimental = {
              completion = {
                enableServerSideFuzzyMatch = true,
                entriesLimit = 100,
              },
            },
          },
        },
      })

      lspconfig.eslint.setup({
        on_attach = function(client, bufnr)
          client.server_capabilities.documentFormattingProvider = true
          on_attach(client, bufnr)
        end,
        settings = {
          workingDirectory = { mode = 'auto' },
          format = { enable = true },
        },
        flags = {
          allow_incremental_sync = false,
          debounce_text_changes = 1000,
        },
      })

      lspconfig.gopls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lspconfig.golangci_lint_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lspconfig.pyright.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lspconfig.taplo.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lspconfig.ruff.setup({
        settings = {
          organizeImports = false,
        },
        on_attach = function(client)
          client.server_capabilities.hoverProvider = false
        end,
      })

      lspconfig.terraformls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        on_init = function(client)
          client.server_capabilities.semanticTokensProvider = nil
        end,
      })

      lspconfig.tflint.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })

      lspconfig.jsonls.setup({
        on_attach = on_attach,
        capabilitites = capabilities,
        settings = {
          schemas = {
            {
              fileMatch = { 'package.json' },
              url = 'https://json.schemastore.org/package.json',
            },
            {
              fileMatch = { 'tsconfig.json', 'tsconfig.*.json' },
              url = 'https://json.schemastore.org/tsconfig',
            },
          },
        },
      })

      lspconfig.tsp_server.setup({
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end,
  },
  {
    'ray-x/go.nvim',
    dependencies = {
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    ft = { 'go', 'gomod' },
    event = { 'CmdLineEnter' },
    build = ':lua require("go.install").update_all_sync()',
    config = function()
      require('go').setup()
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
}
