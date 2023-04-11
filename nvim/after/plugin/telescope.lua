local telescope = require('telescope')
telescope.setup({

})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
