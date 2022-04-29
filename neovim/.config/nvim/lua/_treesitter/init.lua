require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'css',
        'dot',
        'html',
        'json',
        'json5',
        'lua',
        'php',
        'scss',
        'javascript',
        'dockerfile',
        'yaml'
    },
    sync_install = true,
    highlight = {
        enable = true,
        disable = { 'phpdoc' }
    },
    additional_vim_regex_highlighting = false
}
