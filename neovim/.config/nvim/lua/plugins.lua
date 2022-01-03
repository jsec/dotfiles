return require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'ntpeters/vim-better-whitespace' }
    use { 'tpope/vim-fugitive' }
    use { 'Raimondi/delimitMate' }
    use { 'tmux-plugins/vim-tmux-focus-events' }
    use { 'windwp/nvim-autopairs' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'moll/vim-node' }
    use { 'peitalin/vim-jsx-typescript' }
    use { 'junegunn/vim-easy-align' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'nvim-treesitter/playground' }
    use { 'folke/tokyonight.nvim' }
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
    use { 'williamboman/nvim-lsp-installer' }
    use { 'jose-elias-alvarez/null-ls.nvim' }

    use { 'RishabhRD/nvim-lsputils',
      requires = { 'RishabhRD/popfix' }
    }

    use { 'hoob3rt/lualine.nvim',
        config = function() require('_statusbar') end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
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
