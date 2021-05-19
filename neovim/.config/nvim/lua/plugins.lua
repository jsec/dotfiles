return require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'scrooloose/nerdcommenter' }
    use { 'gabesoft/vim-ags' }
    use { 'SirVer/ultisnips' }
    use { 'honza/vim-snippets' }
    use { 'ntpeters/vim-better-whitespace' }
    use { 'tpope/vim-fugitive' }
    use { 'Raimondi/delimitMate' }
    use { 'tmux-plugins/vim-tmux-focus-events' }
    use { 'jiangmiao/auto-pairs' }
    use { 'arcticicestudio/nord-vim' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'lukas-reineke/indent-blankline.nvim', branch = 'lua' }
    use { 'moll/vim-node' }
    use { 'tpope/vim-rails' }
    use { 'jsec/vim-coffee-script' }
    use { 'sheerun/vim-polyglot' }
    use { 'peitalin/vim-jsx-typescript' }
    use { 'neoclide/coc.nvim', branch = 'release' }
    use { 'junegunn/vim-easy-align' }

    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        config = function() require('_galaxyline') end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    use {
        'phaazon/hop.nvim',
        as = 'hop',
        config = function()
        require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
end)
