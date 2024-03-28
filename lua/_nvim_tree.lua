-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",

  view = {
    side = 'left',
    width = 40
  },

  renderer = {
    group_empty = true,
  },

  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>nf', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<leader>ne', ':NvimTreeResize 120<CR>')
vim.keymap.set('n', '<leader>nee', ':NvimTreeResize 40<CR>')

