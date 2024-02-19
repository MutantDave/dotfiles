local telescope = require('telescope')
telescope.setup({
  defaults = {
    path_display = { 'shorten' },
    file_ignore_patterns = {".git/", ".cache", "%.o", "%.a", "%.out", "%.class", "%.pdf", "%.mkv", "%.mp4", "%.zip", ".DS_Store", "node_modules"},
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
