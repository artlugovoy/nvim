return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "olimorris/neotest-rspec",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim"
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-rspec")({
            rspec_cmd = function()
              return vim.tbl_flatten({ "bundle", "exec", "rspec" })
            end
          })
        }
      })

      vim.keymap.set('n', '<leader>rn', function() require("neotest").run.run() end, { desc = "Run nearest test" })
      vim.keymap.set('n', '<leader>rf', function() require('neotest').run.run(vim.fn.expand('%')) end, { desc = "Run current file tests" })
      vim.keymap.set('n', '<leader>ra', function() require("neotest").run.attach() end, { desc = "Attach to test" })
      vim.keymap.set('n', '<leader>rs', function() require("neotest").summary.toggle() end, { desc = "Toggle test summary" })
      vim.keymap.set('n', '<leader>ro', function() require("neotest").output_panel.toggle() end, { desc = "Toggle test output panel" })
    end
  },
}
