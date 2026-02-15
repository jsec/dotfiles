return {
    'FabijanZulj/blame.nvim',
    cmd = { 'BlameToggle' },
    keys = {
        { '<leader>b', ':BlameToggle<cr>', mode = 'n', silent = true },
    },
    config = function()
        require('blame').setup()
    end,
}
