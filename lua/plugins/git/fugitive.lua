return {
  'tpope/vim-fugitive',
  cmd = "Git",
  keys = {
    { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git blame" },
    { "<leader>gm", "<cmd>Git mergetool<cr>", desc = "Git mergetool" },
    { "<leader>gl", "<cmd>silent! Git log<cr>:bot copen<cr>", desc = "Git log" },
  },
}
