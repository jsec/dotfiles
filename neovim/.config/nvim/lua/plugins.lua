local packer = require('packer')

return packer.startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'lewis6991/impatient.nvim' }
    use { 'ntpeters/vim-better-whitespace' }
    use { 'tpope/vim-fugitive' }
    use { 'TimUntersberger/neogit',
      requires = { 'sindrets/diffview.nvim', 'nvim-lua/plenary.nvim' }
    }
    use { 'Raimondi/delimitMate' }
    use { 'tmux-plugins/vim-tmux-focus-events' }
    use { 'windwp/nvim-autopairs' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'simrat39/symbols-outline.nvim' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'peitalin/vim-jsx-typescript' }
    use { 'junegunn/vim-easy-align' }
    use { 'karb94/neoscroll.nvim' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-treesitter/playground' }
    use { 'marko-cerovac/material.nvim' }
    use { 'AlexvZyl/nordic.nvim' }
    use { 'rebelot/kanagawa.nvim' }
    use { 'b3nj5m1n/kommentary' }
    use {
      'phaazon/hop.nvim',
      branch = 'v1',
      config = function()
        require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
            'onsails/lspkind-nvim',
            'rafamadriz/friendly-snippets'
        }
    }

    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'jose-elias-alvarez/null-ls.nvim' }
    use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }
    use { 'lukas-reineke/lsp-format.nvim' }
    use { 'RishabhRD/nvim-lsputils',
      requires = { 'RishabhRD/popfix' }
    }

    use { 'hoob3rt/lualine.nvim',
        config = function() require('_statusbar') end
    }
    use { 'arkav/lualine-lsp-progress' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{ 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-ui-select.nvim' }}
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        },
        config = function()
            require('gitsigns').setup()
        end
    }
end)
