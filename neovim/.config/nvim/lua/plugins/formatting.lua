return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format({ async = true, lsp_fallback = true })
        end,
        mode = '',
        desc = 'Format buffer',
      },
    },
    opts = {
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        lua = { 'stylua' },
        python = { 'isort', 'black' },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
      formatters = {
        shfmt = {
          prepend_args = { '-i', '2' },
        },
      },
    },
  },
  {
    'lukas-reineke/lsp-format.nvim',
    opts = {
      javascript = {
        indent_width = 2,
        order = { 'eslint', 'efm' },
      },
      typescript = {
        indent_width = 2,
        order = { 'eslint', 'efm' },
      },
      html = {
        indent_width = 2,
      },
    },
  },
}
