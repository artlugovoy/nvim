return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "Git blame" })
      vim.keymap.set("n", "<leader>gm", ":Git mergetool<CR>", { desc = "Git mergetool" })
      vim.keymap.set("n", "<leader>gl", ":silent! Git log<CR>:bot copen<CR>", { desc = "Git log" })
    end
  },
  { 'christoomey/vim-conflicted' },
}
