require('nvim-treesitter.configs').setup {
    ensure_installed = 'all',
    ignore_install = { 'haskell', 'cmake' },
    highlight = {
        enable = true,
        disable = {}
    },
    --[[ custom_captures = {
      ["typescriptcustom_type_identifier"] = "TSType",
    }, ]]
    additional_vim_regex_highlighting = false
}
