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

-- Telescope
M.nvim_set_keymap('n', '<c-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })
M.nvim_set_keymap('n', '<leader>ca', ':Telescope lsp_code_actions<CR>', { noremap = true, silent = true })
M.nvim_set_keymap('n', '<leader>gd', ':Telescope lsp_definitions jump_type=vsplit<CR>', { noremap = true, silent = true })
M.nvim_set_keymap('n', '<leader>gr', ':Telescope lsp_references<CR>', { noremap = true, silent = true })
M.nvim_set_keymap('n', '<leader>lg', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- NvimTree
M.nvim_set_keymap('n', '<c-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Hop
M.nvim_set_keymap('n', '<leader>f', ':HopChar2<CR>', { noremap = true, silent = true })

-- Easy Align
M.nvim_set_keymap('v', '<Enter>', '<Plug>(EasyAlign)', {})
M.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', {})

-- Kommentary
vim.g.kommentary_create_default_mappings = false
M.nvim_set_keymap('n', '<leader>cc', '<Plug>kommentary_line_increase', {})
M.nvim_set_keymap('x', '<leader>cc', '<Plug>kommentary_visual_increase<C-c>', {})
M.nvim_set_keymap('n', '<leader>cu', '<Plug>kommentary_line_decrease', {})
M.nvim_set_keymap('x', '<leader>cu', '<Plug>kommentary_visual_decrease<C-c>', {})

-- Symbols outline
M.nvim_set_keymap('n', '<leader>s', ':SymbolsOutline<CR>', { silent = true })
