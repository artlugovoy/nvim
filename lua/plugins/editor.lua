return {
  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.1',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim'
    },
    config = function()
      require('telescope').setup({
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
      require("telescope").load_extension("ui-select")

      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = "Find files" })
      vim.keymap.set('n', '<leader>gg', builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set('n', '<leader>bb', builtin.buffers, { desc = "Buffers" })
    end
  },

  -- File tree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    init = function()
      -- disable netrw at the very start
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    config = function()
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = { side = 'left', width = 40 },
        renderer = { group_empty = true },
        filters = { dotfiles = true },
      })

      vim.keymap.set('n', '<leader>nt', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
      vim.keymap.set('n', '<leader>nf', ':NvimTreeFindFile<CR>', { desc = 'Find file in NvimTree' })
      vim.keymap.set('n', '<leader>ne', ':NvimTreeResize 120<CR>', { desc = 'Expand NvimTree' })
      vim.keymap.set('n', '<leader>nee', ':NvimTreeResize 40<CR>', { desc = 'Shrink NvimTree' })
    end
  },

  -- Undo tree
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = "Toggle UndoTree" })
    end
  },

  -- Search
  { 'dyng/ctrlsf.vim' },

  -- Comments
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({
        padding = true,
        toggler = {
          line = '<leader>cc',
          block = '<leader>bc',
        },
      })
    end
  },

  -- Matchup
  {
    'andymass/vim-matchup',
    init = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  },

  -- Snacks
  { 'folke/snacks.nvim', opts = {} },
}
