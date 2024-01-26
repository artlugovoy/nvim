local lsp = require('lsp-zero').preset({})

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp.default_setup,
    jdtls = lsp.noop
  }
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
