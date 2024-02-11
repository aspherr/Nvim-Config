vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- plugin manager
    use 'wbthomason/packer.nvim'
    
    -- telescope (fuzzy finder)
    use {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

end)

