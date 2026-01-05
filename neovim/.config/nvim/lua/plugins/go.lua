return {
    'ray-x/go.nvim',
    dependencies = {
        'ray-x/guihua.lua',
        'nvim-treesitter/nvim-treesitter',
    },
    ft = { 'go', 'gomod' },
    event = { 'CmdLineEnter' },
    build = ':lua require("go.install").update_all_sync()',
    config = function()
        require('go').setup()
    end,
}
