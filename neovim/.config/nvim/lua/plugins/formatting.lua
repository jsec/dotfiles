return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    opts = {
      log_level = vim.log.levels.DEBUG,
      formatters_by_ft = {
        javascript = { 'eslint', 'dprint' },
        typescript = { 'eslint', 'dprint' },
        python = { 'isort', 'black' },
        go = { 'gofmt', 'goimports' }
      },
      formatters = {
        dprint = {
          condition = function(self, ctx)
            return vim.fs.find({ 'dprint.json' }, { path = ctx.filename, upward = true })[1]
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
