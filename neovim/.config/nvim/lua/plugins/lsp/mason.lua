return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  opts = {
    ensure_installed = {
      'vtsls',
      'pyright',
      'ruff',
      'black',
      'isort',
      'taplo',
      'prettierd',
      'stylua',
      'luacheck',
      'eslint_d',
      'gopls',
      'golangci-lint',
    },
    run_on_start = true,
    debounce_hours = 48,
  },
}
