return {
  'neovim/nvim-lspconfig',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup()

    -- Add custom LSP server configs here if needed
    -- Example:
    -- local lspconfig = require('lspconfig')
    -- lspconfig.lua_ls.setup({})
  end
}
