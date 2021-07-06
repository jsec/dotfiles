require('nvim-treesitter.configs').setup {
    ensure_installed = 'all',
    ignore_install = { 'haskell', 'cmake' },
    highlight = {
        enable = true,
        disable = {}
    }
}
