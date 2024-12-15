return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      lazygit = { enabled = true },
      indent = {
        scope = {
          animate = {
            duration = {
              step = 10,
              total = 250
            }
          }
        }
      }
    }
  }
}
