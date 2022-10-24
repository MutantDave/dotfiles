vim.g.vim_json_conceal = 0
vim.g.markdown_syntax_conceal = 0

vim.env.FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -i -U -g ""'

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

require'colorizer'.setup()
