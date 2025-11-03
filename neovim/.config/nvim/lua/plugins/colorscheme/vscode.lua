return {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('vscode').setup({
            transparent = false,
            italic_comments = true,
            disable_nvimtree_bg = true,
            terminal_colors = true,
        })
    end,
}
