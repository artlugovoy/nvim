return {
  -- LSP Support
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()

      -- Add custom lspconfig setup here if you had any specific server configs
      -- Your current config was very minimal: require('_lsp') which just did mason setup.
    end
  },

  -- LSP endhints
  {
    "chrisgrieser/nvim-lsp-endhints",
    event = "LspAttach",
    config = function()
      require("lsp-endhints").setup({
        icons = {
          type = "󰜁 ",
          parameter = "󰏪 ",
          offspec = " ",
          unknown = " ",
        },
        label = {
          truncateAtChars = 20,
          padding = 1,
          marginLeft = 0,
          sameKindSeparator = ", ",
        },
        extmark = { priority = 50 },
        autoEnableHints = true,
      })
    end,
  },
}
