return {
  {'nvim-telescope/telescope.nvim', dependencies = {'nvim-lua/plenary.nvim'}},
  'tpope/vim-fugitive',
 'BurntSushi/ripgrep',
 'theprimeagen/harpoon',
 {
   'stevearc/oil.nvim',
   opts = {},
   -- Optional dependencies
   dependencies = { "nvim-tree/nvim-web-devicons" },
 },
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/prettier.nvim',
  'nvim-lua/popup.nvim',
  'ryanoasis/vim-devicons',
  'rust-lang/rust.vim',
  'simrat39/rust-tools.nvim',
  'tpope/vim-surround',
  'folke/tokyonight.nvim',
  'NvChad/nvim-colorizer.lua',
  'github/copilot.vim',
  {'numToStr/Navigator.nvim', config = function() require('Navigator').setup() end},
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  'mbbill/undotree',
  {'VonHeikemen/lsp-zero.nvim', dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'L3MON4D3/LuaSnip',
    'rafamadriz/friendly-snippets',
  }},
  'nvim-tree/nvim-web-devicons',
  'mfussenegger/nvim-jdtls',
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "8.4.1", -- Pin Neorg to the latest stable release
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
      },
    }
  end,
  }
}
