vim.g.vim_json_conceal = 0
vim.g.markdown_syntax_conceal = 0

vim.cmd [[colorscheme tokyonight]]
vim.g.NERDTreeMinimalMenu = 1
vim.g.NERDTreeShowHidden = 1
vim.g.NERDTreeWinSize = 60
vim.g.NERDTreeIgnore = {'.DS_Store'}

require'colorizer'.setup({})
vim.cmd [[:TransparentEnable]]
