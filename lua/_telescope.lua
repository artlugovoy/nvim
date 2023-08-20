local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>vg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>vb', builtin.buffers, {})

