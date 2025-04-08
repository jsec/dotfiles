return {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
        require('catppuccin').setup({
            styles = {
                comments = { 'italic' },
                conditionals = { 'italic' },
                loops = { 'italic' },
                keywords = { 'italic' },
            },
            integrations = {
                barbecue = {
                    dim_dirname = true,
                    bold_basename = true,
                    dim_context = false,
                    alt_background = false,
                },
                gitsigns = true,
                mason = true,
                noice = true,
                cmp = false,
                blink_cmp = true,
                semantic_tokens = true,
                nvimtree = true,
                treesitter = true,
                treesitter_context = true,
                telescope = {
                    enabled = true,
                },
            },
        })

        vim.cmd('colorscheme catppuccin')
    end,
}
