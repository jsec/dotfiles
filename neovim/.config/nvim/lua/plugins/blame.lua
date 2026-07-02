return {
    specs = {
        {
            src = 'https://github.com/FabijanZulj/blame.nvim',
            version = '179da7aaacce7c52874af636255ede72dd6fe796',
        },
    },
    setup = function()
        vim.keymap.set('n', '<leader>b', '<cmd>BlameToggle<cr>', { silent = true })
        require('blame').setup()
    end,
}
