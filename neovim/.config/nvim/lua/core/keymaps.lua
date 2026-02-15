-- Split navigation
vim.keymap.set('n', '<c-h>', '<cmd>wincmd h<cr>', { silent = true })
vim.keymap.set('n', '<c-l>', '<cmd>wincmd l<cr>', { silent = true })

-- Split resizing
vim.keymap.set('n', '<c-j>', '<cmd>vertical resize -5<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<c-k>', '<cmd>vertical resize +5<cr>', { noremap = true, silent = true })

-- Misc
vim.keymap.set('n', '<leader>a', 'ggVG', { noremap = true, silent = true })
vim.keymap.set('n', '<c-o>', '<cmd>nohlsearch<cr>', { silent = true })
vim.keymap.set('i', 'jj', '<esc>', { noremap = true })
vim.keymap.set('n', ';w', '<cmd>w<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>`', '<cmd>ccl<cr>', { silent = true })
vim.keymap.set(
    'n',
    '<leader>s',
    '<cmd>lua vim.diagnostic.open_float()<cr>',
    { noremap = true, silent = true }
)

-- Trouble
vim.keymap.set('n', '<leader>xx', '<cmd>TroubleToggle<cr>', { silent = true })

-- Noice
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', { desc = 'Hover' })

-- Yank to clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
