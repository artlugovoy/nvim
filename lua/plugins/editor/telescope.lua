return {
  'nvim-telescope/telescope.nvim',
  tag = 'v0.2.1',
  cmd = "Telescope",
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim'
  },
  keys = {
    { '<leader>f', '<cmd>Telescope find_files<cr>', desc = "Find files" },
    { '<leader>gg', '<cmd>Telescope live_grep<cr>', desc = "Live grep" },
    { '<leader>bb', '<cmd>Telescope buffers<cr>', desc = "Buffers" },
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous
          }
        },
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
          prompt_position = "top",
          horizontal = { mirror = false },
          vertical = { vertical = { width = 0.2 }, mirror = false }
        },
        preview = { treesitter = false }
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {}
        }
      }
    })

    telescope.load_extension("ui-select")
  end
}
