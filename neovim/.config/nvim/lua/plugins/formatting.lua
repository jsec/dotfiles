return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        python = { 'isort', 'black' },
      },
      formatters = {
        shfmt = {
          prepend_args = { '-i', '2', '-ci' },
        },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    },
  },
  {
    'lukas-reineke/lsp-format.nvim',
    opts = {
      javascript = {
        indent_width = 2,
        order = { 'eslint' },
      },
      typescript = {
        indent_width = 2,
        order = { 'eslint' },
      },
      html = {
        indent_width = 2,
      },
    },
  },
}
