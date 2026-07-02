return {
    specs = {
        {
            src = 'https://github.com/FabijanZulj/blame.nvim',
        },
    },
    setup = function()
        vim.keymap.set('n', '<leader>b', '<cmd>BlameToggle<cr>', { silent = true })
        require('blame').setup()
    end,
}
