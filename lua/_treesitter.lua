-- Treesitter-based folding (disabled by default, set foldenable=true in init.lua if you want it)
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "lua", "vim", "vimdoc", "query", "ruby", "go" },

  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true
}
