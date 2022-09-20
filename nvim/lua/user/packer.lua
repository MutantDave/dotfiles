-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'	

  use 'EdenEast/nightfox.nvim'

  use 'preservim/nerdtree'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  use 'prettier/vim-prettier'

  use 'neovim/nvim-lspconfig'
  
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'

  use 'simrat39/rust-tools.nvim'

  use 'hrsh7th/vim-vsnip'

  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  use 'arcticicestudio/nord-vim'
  use 'ryanoasis/vim-devicons'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'

  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'jparise/vim-graphql'

  use 'tomlion/vim-solidity'
  use 'dense-analysis/ale'
  use { "catppuccin/nvim", as = "catppuccin" }

  use 'github/copilot.vim'
end)
