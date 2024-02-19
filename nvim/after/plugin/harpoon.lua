require("telescope").load_extension('harpoon')
vim.keymap.set('n', '<leader>m', ':lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set('n', '<leader>q', ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<leader>i', ':lua require("harpoon.ui").nav_next()<CR>')
vim.keymap.set('n', '<leader>o', ':lua require("harpoon.ui").nav_prev()<CR>')

require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 24,
    }
})

