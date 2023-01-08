-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'preservim/nerdtree'

  use 'prettier/vim-prettier'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'junegunn/fzf.vim'
  use 'junegunn/fzf'

  use 'ryanoasis/vim-devicons'
  use 'rust-lang/rust.vim'

  use 'tpope/vim-surround'

  use { "catppuccin/nvim", as = "catppuccin" }

  use 'xiyaowong/nvim-transparent'
  use 'NvChad/nvim-colorizer.lua'

  use 'vim-scripts/scratch.vim'
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
  use 'github/copilot.vim'
  use {
    'vimwiki/vimwiki',
    config = function()
        vim.g.vimwiki_list = {
            {
                path = '~/.wiki',
                syntax = 'markdown',
                ext = '.md',
            }
        }
    end
}
end)
