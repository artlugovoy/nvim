return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    'zbirenbaum/copilot.lua',
    'nvim-lua/plenary.nvim'
  },
  cmd = {
    "CopilotChat",
    "CopilotChatOpen",
    "CopilotChatToggle",
  },
  keys = {
    { '<Leader>s', mode = { 'n', 'i' }, desc = "CopilotChat submit prompt" },
  },
  opts = {
    mappings = {
      submit_prompt = { normal = '<Leader>s', insert = '<C-s>' },
      show_diff = { full_diff = true }
    },
    model = "gpt-4o",
    enable_chat_window = true,
    enable_chat_history = true,
  },
}
