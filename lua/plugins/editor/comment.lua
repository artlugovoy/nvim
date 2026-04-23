return {
  'numToStr/Comment.nvim',
  keys = {
    { '<leader>cc', mode = { 'n', 'v' }, desc = "Toggle line comment" },
    { '<leader>bc', mode = { 'n', 'v' }, desc = "Toggle block comment" },
  },
  opts = {
    padding = true,
    toggler = {
      line = '<leader>cc',
      block = '<leader>bc',
    },
  },
}
