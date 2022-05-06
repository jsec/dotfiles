return require('packer').startup(function()
  local config = function(name)
    return string.format("require('plugins.%s')", name)
  end

  local use_with_config = function(path, name)
    use({ path, config = config(name) })
  end

    use { 'wbthomason/packer.nvim' }
    use { 'lewis6991/impatient.nvim' }
    use { 'ntpeters/vim-better-whitespace' }
    use { 'tpope/vim-fugitive' }
    use { 'Raimondi/delimitMate' }
    use { 'tmux-plugins/vim-tmux-focus-events' }
    use_with_config('windwp/nvim-autopairs', 'autopairs')
    use_with_config('kyazdani42/nvim-web-devicons', 'nvim-web-devicons')
    use_with_config('kyazdani42/nvim-tree.lua', 'nvim-tree')
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'moll/vim-node' }
    use { 'peitalin/vim-jsx-typescript' }
    use { 'junegunn/vim-easy-align' }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = config('nvim-treesitter')
    }
    use { 'nvim-treesitter/playground' }
    use { 'Mofiqul/vscode.nvim' }
    use { 'b3nj5m1n/kommentary' }
    use {
      'phaazon/hop.nvim',
      branch = 'v1',
      config = config('hop')
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
        },
        config = config('nvim-cmp')
    }

    use { 'neovim/nvim-lspconfig' }
    use { 'williamboman/nvim-lsp-installer' }
    use { 'jose-elias-alvarez/null-ls.nvim' }
    use { 'lukas-reineke/lsp-format.nvim' }
    use { 'RishabhRD/nvim-lsputils',
      requires = { 'RishabhRD/popfix' }
    }
    use_with_config('hoob3rt/lualine.nvim', 'lualine')
    use { 'arkav/lualine-lsp-progress' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-ui-select.nvim'}},
        config = config('telescope')
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
