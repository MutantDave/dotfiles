-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'BurntSushi/ripgrep'

  use('theprimeagen/harpoon')

  use 'preservim/nerdtree'
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  use 'nvim-lua/popup.nvim'

  use 'ryanoasis/vim-devicons'
  use 'rust-lang/rust.vim'
  use 'simrat39/rust-tools.nvim'

  use 'tpope/vim-surround'

  use { "catppuccin/nvim", as = "catppuccin" }

  use 'xiyaowong/nvim-transparent'
  use 'NvChad/nvim-colorizer.lua'
  use 'github/copilot.vim'

  use {
    'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end
  }

  use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}
  use 'nvim-treesitter/playground'

  use 'mbbill/undotree'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
  use 'folke/tokyonight.nvim'
end)
