-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'	
  use 'EdenEast/nightfox.nvim'

  use 'neovim/nvim-lspconfig'

  use 'preservim/nerdtree'

  use 'prettier/vim-prettier'
  
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  use 'simrat39/rust-tools.nvim'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use 'arcticicestudio/nord-vim'
  use 'ryanoasis/vim-devicons'

  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'jparise/vim-graphql'

  use 'tomlion/vim-solidity'
  use 'dense-analysis/ale'
  use { "catppuccin/nvim", as = "catppuccin" }

  use 'github/copilot.vim'
  use 'NvChad/nvim-colorizer.lua'

end)
