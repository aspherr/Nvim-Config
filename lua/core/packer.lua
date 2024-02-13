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
    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    -- lualine 
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- alpha nvim
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }, 
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }
    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    -- Autocomplete
    use ('hrsh7th/cmp-nvim-lsp')
    use ('hrsh7th/nvim-cmp')
    use ('L3MON4D3/luasnip')
    use ('saadparwaiz1/cmp_luasnip')
    use ('rafamadriz/friendly-snippets') 
end)

