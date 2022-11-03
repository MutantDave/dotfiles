vim.cmd([[filetype plugin indent on]])

vim.g.mapleader = " "

if vim.fn.exists("syntax_on") ~= 1 then
  vim.cmd([[syntax enable]])
end

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.signcolumn = "yes"
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

vim.opt.hlsearch = false

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.clipboard = "unnamed"

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
