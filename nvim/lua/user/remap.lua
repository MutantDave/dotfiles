vim.keymap.set({'n', 't'}, '<M-h>', '<CMD>NavigatorLeft<CR>')
vim.keymap.set({'n', 't'}, '<M-l>', '<CMD>NavigatorRight<CR>')
vim.keymap.set({'n', 't'}, '<M-k>', '<CMD>NavigatorUp<CR>')
vim.keymap.set({'n', 't'}, '<M-j>', '<CMD>NavigatorDown<CR>')

vim.keymap.set("n","<leader>b", "<c-^><CR>")
vim.keymap.set("n","<leader>f", ":NERDTreeToggle<CR>")
vim.keymap.set("n","<leader>p", ":Files<CR>")
vim.keymap.set("n","<leader>v", ":vsplit<CR>")
vim.keymap.set("n","<leader>h", ":split<CR>")
vim.keymap.set("n","gs", ":Sscratch<CR>")
vim.keymap.set("n","<C-d>", "<C-d>zz")
vim.keymap.set("n","<C-u>", "<C-u>zz")

vim.keymap.set("v","J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v","K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n","Q", "<nop>")

vim.cmd [[cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))]]
