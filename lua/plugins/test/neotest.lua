return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "olimorris/neotest-rspec",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim"
  },
  keys = {
    { '<leader>rn', function() require("neotest").run.run() end, desc = "Run nearest test" },
    { '<leader>rf', function() require('neotest').run.run(vim.fn.expand('%')) end, desc = "Run current file tests" },
    { '<leader>ra', function() require("neotest").run.attach() end, desc = "Attach to test" },
    { '<leader>rs', function() require("neotest").summary.toggle() end, desc = "Toggle test summary" },
    { '<leader>ro', function() require("neotest").output_panel.toggle() end, desc = "Toggle test output panel" },
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
  end
}
