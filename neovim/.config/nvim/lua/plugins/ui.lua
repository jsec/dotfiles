return {
    { 'echasnovski/mini.trailspace', version = '*' },
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            theme = 'catppuccin',
            ignore_focus = { 'NvimTree' }
        },
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = 'BufReadPost',
        opts = {
            filetype_exclude = { 'help', 'lazy' },
            show_trailing_blankline_indent = true,
            show_current_context = true,
        },
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        keys = {
            { '<c-n>', '<cmd>NvimTreeToggle<cr>', desc = 'NvimTree' },
        },
        opts = {
            filters = {
                custom = { '.git', 'node_modules', 'dist' },
            },
        },
    },
    {
        'utilyre/barbecue.nvim',
        name = 'barbecue',
        dependencies = {
            'SmiteshP/nvim-navic',
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require('barbecue').setup({
                theme = 'catppuccin'
            })
        end
    },
    {
        'lewis6991/hover.nvim',
        config = function()
            require('hover').setup({
                init = function()
                    require('hover.providers.lsp')
                end,
                title = true
            })

            vim.keymap.set('n', 'K', require('hover').hover, { desc = 'Hover' })
            vim.keymap.set('n', 'gK', require('hover').hover_select, { desc = 'Hover Select' })
        end
    },
    {
        'folke/noice.nvim',
        event = 'VeryLazy',
        dependencies = {
            'MunifTanjim/nui.nvim'
        },
        config = function()
            require("noice").setup({
                lsp = {
                    override = {
                      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                      ["vim.lsp.util.stylize_markdown"] = true,
                      ["cmp.entry.get_documentation"] = true,
                    },
                },
                presets = {
                    bottom_search = true, -- use a classic bottom cmdline for search
                    command_palette = true, -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false, -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = false, -- add a border to hover docs and signature help
                },
            })
        end
    },
    {
      'folke/trouble.nvim',
       dependencies = { "nvim-tree/nvim-web-devicons" },
    }
}
