require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous
      }
    },
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    layout_config = {
      prompt_position = "top",
      horizontal = {
        mirror = false,
      },
      vertical = {
        vertical = { width = 0.2 },
        mirror = false,
      }
    },
    -- Disable treesitter highlighting in previews to avoid query errors
    preview = {
      treesitter = false
    }
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    }
  }
}

require("telescope").load_extension("ui-select")

-- Set up keymaps after telescope is loaded
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>bb', builtin.buffers, {})
