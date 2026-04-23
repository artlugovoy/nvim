return {
  -- Greeter plugin
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
  },

  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local custom_gruvbox = require('lualine.themes.gruvbox-material')
      require('lualine').setup({
        options = {
          theme = custom_gruvbox,
          icons_enabled = true,
          component_separators = '|',
          section_separators = '',
        },
      })
    end,
  },

  -- Dressing
  {
    'stevearc/dressing.nvim',
    config = function()
      require('dressing').setup({
        input = {
          enabled = true,
        },
        select = {
          enabled = true,
          backend = { "builtin" },
          builtin = {
            border = "rounded",
          },
        },
      })
    end,
  },

  -- Web Devicons
  { 'nvim-tree/nvim-web-devicons', lazy = true },

  -- Colorscheme
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Leader key and other global variables should be in options.lua
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
}
