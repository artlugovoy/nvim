-- Disable render-markdown plugin to avoid treesitter compatibility issues
local ok, render_markdown = pcall(require, 'render-markdown')
if ok then
  render_markdown.setup({
    enabled = false,
  })
end
