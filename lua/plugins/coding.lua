return {
  -- Blink.cmp
  {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = {
      'rafamadriz/friendly-snippets',
      'hrsh7th/vim-vsnip',
      'kitagry/vs-snippets',
      'giuxtaposition/blink-cmp-copilot',
    },
    config = function()
      local has_words_before = function()
        unpack = unpack or table.unpack
        local line, col = unpack(vim.api.nvim_win_get_cursor(0))
        return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
      end

      require('blink.cmp').setup({
        keymap = {
          preset = 'enter',
          ['<Tab>'] = {
            function(cmp)
              if cmp.is_visible() then
                return cmp.select_next()
              elseif vim.fn["vsnip#available"](1) == 1 then
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-expand-or-jump)", true, true, true), "", true)
                return true
              elseif has_words_before() then
                return cmp.show()
              end
            end,
            'snippet_forward',
            'fallback'
          },
          ['<S-Tab>'] = {
            function(cmp)
              if cmp.is_visible() then
                return cmp.select_prev()
              elseif vim.fn["vsnip#jumpable"](-1) == 1 then
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Plug>(vsnip-jump-prev)", true, true, true), "", true)
                return true
              end
            end,
            'snippet_backward',
            'fallback'
          },
          ['<C-j>'] = { 'select_next', 'fallback' },
          ['<C-k>'] = { 'select_prev', 'fallback' },
          ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
          ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
          ['<C-Space>'] = { 'show', 'show_documentation', 'hide_documentation' },
          ['<C-e>'] = { 'hide', 'fallback' },
          ['<CR>'] = { 'accept', 'fallback' },
        },

        appearance = {
          use_nvim_cmp_as_default = true,
          nerd_font_variant = 'mono'
        },

        sources = {
          default = { 'lsp', 'path', 'snippets', 'buffer', 'copilot' },
          providers = {
            copilot = {
              name = "copilot",
              module = "blink-cmp-copilot",
              score_offset = 100,
              async = true,
            },
          },
        },

        completion = {
          accept = { auto_brackets = { enabled = true } },
          menu = { draw = { treesitter = { 'lua', 'markdown' } } },
          documentation = { auto_show = true, auto_show_delay_ms = 200 },
          ghost_text = { enabled = false },
        },

        snippets = {
          expand = function(snippet) vim.fn["vsnip#anonymous"](snippet) end,
          active = function(filter)
            if filter and filter.direction then
              return vim.fn["vsnip#jumpable"](filter.direction)
            end
            return vim.fn["vsnip#available"](1) == 1
          end,
          jump = function(direction) vim.fn["vsnip#jump"](direction) end,
        },

        signature = { enabled = true }
      })
    end
  },

  -- Copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },
}
