require('nvim-tree').setup({
  view = {
    width = 35
  },
  filters = {
    custom = { '.git/', 'node_modules', 'dist' }
  }
})
