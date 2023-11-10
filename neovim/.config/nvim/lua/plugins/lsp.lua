return {
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    opts = {
      ensure_installed = {
        'pyright',
        'ruff-lsp',
        'black',
        'isort',
        'taplo',
        'prettierd',
        'stylua',
        'luacheck',
        'eslint_d',
        'gopls',
        'golangci-lint',
        'efm',
      },
      run_on_start = true,
      debounce_hours = 48,
    },
  },
  {
    'creativenull/efmls-configs-nvim',
    version = 'v1.x.x',
    dependencies = { 'neovim/nvim-lspconfig' },
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require('lspconfig')
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local on_attach = require('util.lsp').on_attach
      require('mason').setup()
      require('mason-lspconfig').setup()

      lspconfig.eslint.setup({
        on_attach = function(client, bufnr)
          client.server_capabilities.documentFormattingProvider = true
          require('lsp-format').on_attach(client, bufnr)
          on_attach(client, bufnr)
        end,
        root_dir = lspconfig.util.root_pattern(
          '.eslintrc',
          '.eslintrc.js',
          '.eslintrc.cjs',
          '.eslintrc.json',
          '.git'
        ),
        settings = {
          format = { enable = true },
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

      lspconfig.ruff_lsp.setup({
        settings = {
          organizeImports = false,
        },
        on_attach = function(client)
          client.server_capabilities.hoverProvider = false
        end,
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

      lspconfig.efm.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        init_options = {
          documentFormatting = true,
        },
        settings = {
          languages = {
            typescript = {
              require('efmls-configs.formatters.prettier_d'),
            },
            javascript = {
              require('efmls-configs.formatters.prettier_d'),
            },
          },
        },
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
    config = function()
      require('go').setup()
    end,
    event = { 'CmdLineEnter' },
    ft = { 'go', 'gomod' },
    build = ':lua require("go.install").update_all_sync()',
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'neovim/nvim-lspconfig',
    },
    config = function()
      require('typescript-tools').setup({
        on_attach = function(client)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
        end,
      })
    end,
  },
}
