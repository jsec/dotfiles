return {
    specs = {
        {
            src = 'https://codeberg.org/andyg/leap.nvim',
        },
    },
    setup = function()
        vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
        vim.keymap.set('n', 'S', '<Plug>(leap-from-window)')
    end,
}
