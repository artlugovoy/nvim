return {
  {
    'nvim-treesitter/nvim-treesitter',
    commit = '42fc28ba',
    build = ':TSUpdate',
    config = function()
      -- Modern treesitter setup (for recent versions)
      require('nvim-treesitter').setup({
        install_dir = vim.fn.stdpath('data') .. '/treesitter'
      })

      -- Install commonly used parsers
      local parsers = { "lua", "vim", "vimdoc", "query", "ruby", "go", "markdown", "markdown_inline" }
      require('nvim-treesitter').install(parsers)
      
      -- Add the install dir to runtime path so parsers can be found
      vim.opt.runtimepath:append(vim.fn.stdpath('data') .. '/treesitter')
    end
  },
}
