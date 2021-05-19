local M = vim.api

-- Set leader
vim.g.mapleader = ','

-- Split navigation
M.nvim_set_keymap('n', '<c-h>', ':wincmd h<CR>', { silent = true })
M.nvim_set_keymap('n', '<c-l>', ':wincmd l<CR>', { silent = true })

-- Split resizing
M.nvim_set_keymap('n', '<c-j>', ':vertical resize -5<CR>', { noremap = true, silent = true  })
M.nvim_set_keymap('n', '<c-k>', ':vertical resize +5<CR>', { noremap = true, silent = true })

-- General
M.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap = true, silent = true })
M.nvim_set_keymap('n', '<c-o>', ':nohlsearch<CR>', { silent = true })
M.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true })
M.nvim_set_keymap('n', ';w', ':w<CR>', { noremap = true, silent = true })
M.nvim_set_keymap('n', '<leader>`', ':ccl<CR>', { silent = true })

-- Hop
M.nvim_set_keymap('n', '<leader>f', "<cmd>lua require'hop'.hint_words()<cr>", {})

-- Telescope
M.nvim_set_keymap('n', '<c-p>', ':Telescope git_files<CR>', { noremap = true, silent = true })

-- NvimTree
M.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- CoC
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-y>" : "\\<Tab>"', {expr = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
