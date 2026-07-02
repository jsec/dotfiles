return {
    specs = {
        {
            src = 'https://github.com/b3nj5m1n/kommentary',
            version = 'd5a111a3bc4109a8f913a5863c9092b3b3801482',
        },
    },
    setup = function()
        vim.keymap.set('n', '<leader>cc', '<Plug>kommentary_line_increase')
        vim.keymap.set('x', '<leader>cc', '<Plug>kommentary_visual_increase<C-c>')
        vim.keymap.set('n', '<leader>cu', '<Plug>kommentary_line_decrease')
        vim.keymap.set('v', '<leader>cu', '<Plug>kommentary_visual_decrease<C-c>')
    end,
}
