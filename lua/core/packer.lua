vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- capputtcin color scheme 
    use { 
        "catppuccin/nvim", as = "catppuccin",
        config = function() vim.cmd [[colorscheme catppuccin]] end
    }
    
    -- telescope (fuzzy finder)
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- treesitter
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    
    -- harpoon (file pins)
    use ('theprimeagen/harpoon')
    
    -- fugitive (git)
    use ('tpope/vim-fugitive')
    
end)

