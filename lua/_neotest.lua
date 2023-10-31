local run_nearest = function()
  require("neotest").run.run()
end

local run_all = function()
   require('neotest').run.run(vim.fn.expand('%'))
end

local spec_attach = function()
   require("neotest").run.attach()
end

local spec_summary = function()
   require("neotest").summary.toggle()
end

local spec_output = function()
   require("neotest").output_panel.toggle()
end

require("neotest").setup({
  adapters = {
    require("neotest-rspec")({
      rspec_cmd = function()
        return vim.tbl_flatten({
          "docker",
          "compose",
          "run",
          "app",
          "rspec"
        })
      end,

      -- relative file path for docker-compose
      transform_spec_path = function(path)
        local prefix = require('neotest-rspec').root(path)
        return string.sub(path, string.len(prefix) + 2, -1)
      end,

      results_path = "tmp/rspec.output"
    })
  }
})

vim.keymap.set('n', '<leader>rn', run_nearest)
vim.keymap.set('n', '<leader>rf', run_all)
vim.keymap.set('n', '<leader>ra', spec_attach)
vim.keymap.set('n', '<leader>rs', spec_summary)
vim.keymap.set('n', '<leader>ro', spec_output)
