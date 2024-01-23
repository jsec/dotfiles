return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        javascript = { 'eslint_d', 'prettierd' },
        typescript = { 'eslint_d', 'prettierd' },
        python = { 'isort', 'black' },
        go = { 'gofmt', 'goimports' }
      },
      formatters = {
        eslint_d = {
          condition = function(self, ctx)
            return vim.fs.find({ '.eslintrc.js '}, { path = ctx.filename, upward = true })[1]
          end
        },
        prettierd = {
          condition = function(self, ctx)
            return vim.fs.find({ '.prettierrc.js' }, { path = ctx.filename, upward = true })[1]
          end
        }
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    },
  },
}
