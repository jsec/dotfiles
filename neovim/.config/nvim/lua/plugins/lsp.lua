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
        'efm'
      },
      run_on_start = true,
      debounce_hours = 48
    }
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
        on_attach = on_attach,
        root_dir = lspconfig.util.root_pattern(
          '.eslintrc',
          '.eslintrc.js',
          '.eslintrc.cjs',
          '.eslintrc.json',
          '.git'
        ),
        settings = {
          format = { enable = false }
        }
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
          organizeImports = false
        },
        on_attach = function(client)
          client.server_capabilities.hoverProvider = false
        end
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
      'neovim/nvim-lspconfig'
    },
    opts = {},
  }
}
