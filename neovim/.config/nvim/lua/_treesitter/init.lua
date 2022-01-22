require('nvim-treesitter.configs').setup {
    ensure_installed = 'all',
    ignore_install = { 'haskell', 'cmake', 'phpdoc' },
    highlight = {
        enable = true,
        disable = { 'phpdoc' }
    },
    additional_vim_regex_highlighting = false
}
