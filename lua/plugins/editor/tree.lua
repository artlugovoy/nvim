return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  cmd = { "NvimTreeToggle", "NvimTreeFindFile", "NvimTreeResize" },
  keys = {
    { '<leader>nt', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle NvimTree' },
    { '<leader>nf', '<cmd>NvimTreeFindFile<cr>', desc = 'Find file in NvimTree' },
    { '<leader>ne', '<cmd>NvimTreeResize 120<cr>', desc = 'Expand NvimTree' },
    { '<leader>nee', '<cmd>NvimTreeResize 40<cr>', desc = 'Shrink NvimTree' },
  },
  init = function()
    -- Disable netrw at the very start
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  opts = {
    sort_by = "case_sensitive",
    view = { side = 'left', width = 40 },
    renderer = { group_empty = true },
    filters = { dotfiles = true },
  },
}
