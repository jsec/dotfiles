return {
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
  {
      'rachartier/tiny-inline-diagnostic.nvim',
      event = 'VeryLazy',
      priority = 1000,
      config = function()
        require('tiny-inline-diagnostic').setup({
            preset = 'amongus',
            options = {
                show_source = {
                    enabled = true,
                    if_many = true,
                },
                severity = {
                    vim.diagnostic.severity.ERROR,
                    vim.diagnostic.severity.WARN,
                }
            },
        })

        vim.diagnostic.config({ virtual_text = false })
      end
  }
}
