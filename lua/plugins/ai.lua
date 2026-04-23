return {
  -- CopilotChat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      'github/copilot.vim',
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require("CopilotChat").setup({
        mappings = {
          submit_prompt = { normal = '<Leader>s', insert = '<C-s>' },
          show_diff = { full_diff = true }
        },
        model = "gpt-4o",
        enable_chat_window = true,
        enable_chat_history = true,
      })
    end
  },
}
