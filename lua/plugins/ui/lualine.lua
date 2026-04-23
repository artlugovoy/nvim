return {
  'nvim-lualine/lualine.nvim',
  event = "VeryLazy",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = function()
    local custom_gruvbox = require('lualine.themes.gruvbox-material')
    return {
      options = {
        theme = custom_gruvbox,
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
      },
    }
  end,
}
