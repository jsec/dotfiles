return require('packer').startup(function()
    use { 'wbthomason/packer.nvim' }
    use { 'scrooloose/nerdcommenter' }
    use { 'gabesoft/vim-ags' }
    use { 'SirVer/ultisnips' }
    use { 'honza/vim-snippets' }
    use { 'bitc/vim-bad-whitespace' }
    use { 'tpope/vim-fugitive' }
    use { 'Raimondi/delimitMate' }
    use { 'tmux-plugins/vim-tmux-focus-events' }
    use { 'jiangmiao/auto-pairs' }
    use { 'arcticicestudio/nord-vim' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'kyazdani42/nvim-tree.lua' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
end)
