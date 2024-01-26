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
          "bundle",
          "exec",
          "rspec"
        })
      end
    })
  }
})

vim.keymap.set('n', '<leader>rn', run_nearest)
vim.keymap.set('n', '<leader>rf', run_all)
vim.keymap.set('n', '<leader>ra', spec_attach)
vim.keymap.set('n', '<leader>rs', spec_summary)
vim.keymap.set('n', '<leader>ro', spec_output)
