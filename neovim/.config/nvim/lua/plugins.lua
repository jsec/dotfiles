return require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'scrooloose/nerdcommenter' }
    use { 'gabesoft/vim-ags' }
    use { 'SirVer/ultisnips' }
    use { 'ntpeters/vim-better-whitespace' }
    use { 'tpope/vim-fugitive' }
    use { 'Raimondi/delimitMate' }
    use { 'tmux-plugins/vim-tmux-focus-events' }
    use { 'jiangmiao/auto-pairs' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'moll/vim-node' }
    use { 'peitalin/vim-jsx-typescript' }
    use { 'junegunn/vim-easy-align' }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'folke/tokyonight.nvim' }
    use { 'ggandor/lightspeed.nvim' }

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
    use { 'kabouzeid/nvim-lspinstall' }
    use { 'glepnir/lspsaga.nvim' }
    use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }
    use { 'jose-elias-alvarez/null-ls.nvim' }

    use { 'famiu/feline.nvim',
        config = function() require('_statusbar') end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

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
