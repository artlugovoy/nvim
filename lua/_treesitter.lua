-- Treesitter-based folding (disabled by default, set foldenable=true in init.lua if you want it)
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

-- Modern treesitter setup (for recent versions)
require('nvim-treesitter').setup {
  install_dir = vim.fn.stdpath('data') .. '/treesitter'
}

-- Install commonly used parsers
local parsers = { "lua", "vim", "vimdoc", "query", "ruby", "go", "markdown", "markdown_inline" }
require('nvim-treesitter').install(parsers)
