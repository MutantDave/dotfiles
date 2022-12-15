local nnoremap = require("user.keymap").nnoremap
local vnoremap = require("user.keymap").vnoremap

--nnoremap("<C-h>","<C-w>h")
--nnoremap("<C-j>","<C-w>j")
--nnoremap("<C-k>","<C-w>k")
--nnoremap("<C-l>","<C-w>l")

vim.keymap.set({'n', 't'}, '<C-h>', '<CMD>NavigatorLeft<CR>')
vim.keymap.set({'n', 't'}, '<C-l>', '<CMD>NavigatorRight<CR>')
vim.keymap.set({'n', 't'}, '<C-k>', '<CMD>NavigatorUp<CR>')
vim.keymap.set({'n', 't'}, '<C-j>', '<CMD>NavigatorDown<CR>')

vim.keymap.set({'n', 't'}, '<M-h>', '<CMD>NavigatorLeft<CR>')
vim.keymap.set({'n', 't'}, '<M-l>', '<CMD>NavigatorRight<CR>')
vim.keymap.set({'n', 't'}, '<M-k>', '<CMD>NavigatorUp<CR>')
vim.keymap.set({'n', 't'}, '<M-j>', '<CMD>NavigatorDown<CR>')

nnoremap("<leader>b", "<c-^><CR>")
nnoremap("<leader>f", ":NERDTreeToggle<CR>")
nnoremap("<leader>p", ":Files<CR>")
nnoremap("<leader>v", ":vsplit<CR>")
nnoremap("<leader>h", ":split<CR>")
nnoremap("gs", ":Sscratch<CR>")

vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

vim.cmd [[cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))]]
