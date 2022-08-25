local nnoremap = require("user.keymap").nnoremap

nnoremap("<C-h>","<C-w>h")
nnoremap("<C-j>","<C-w>j")
nnoremap("<C-k>","<C-w>k")
nnoremap("<C-l>","<C-w>l")

nnoremap("<leader>b", "<c-^><CR>")
nnoremap("<leader>f", ":NERDTree<CR>")
nnoremap("<leader>p", ":Files<CR>")

nnoremap("<leader>w", ":w<CR>")
nnoremap("<leader>q", ":q<CR>")
