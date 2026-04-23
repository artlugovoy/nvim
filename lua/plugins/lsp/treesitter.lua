return {
  'nvim-treesitter/nvim-treesitter',
  event = { "BufReadPost", "BufNewFile" },
  build = ':TSUpdate',
  init = function()
    vim.g.plugin_update_notifications = 0
  end,
  opts = {
    ensure_installed = {
      "lua", "vim", "vimdoc", "query",
      "ruby", "go", "markdown", "markdown_inline"
    },
    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
  },
  config = function(_, opts)
    require('nvim-treesitter').setup(opts)
  end
}
