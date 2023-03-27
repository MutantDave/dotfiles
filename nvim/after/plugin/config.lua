vim.g.vim_json_conceal = 0
vim.g.markdown_syntax_conceal = 0

vim.env.FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -i -U -g ""'

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]
vim.g.NERDTreeMinimalMenu = 1
vim.g.NERDTreeShowHidden = 1

vim.g.NERDTreeIgnore = {'.DS_Store'}

require'colorizer'.setup({})

require'transparent'.setup({
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude_groups = {}, -- table: groups you don't want to clear
})

