return {
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format({ lsp_fallback = true })
        end,
        desc = 'Format'
      }
    },
    opts = {
      formatters_by_ft = {
        python = { 'isort', 'black' },
        markdown = { 'inject' },
        typescript = { 'eslint_d', 'prettierd' },
        javascript = { 'eslint_d', 'prettierd' }
      },
      format_on_save = {
        lsp_fallback = true
      }
    }
  }
}
