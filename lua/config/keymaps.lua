-- Map escape to jk
vim.keymap.set("i", "jk", "<Esc>")

-- Save and exit
vim.keymap.set("n", "<leader>q", ":wqa!<CR>")
vim.keymap.set("n", "<leader>sq", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader><Esc>", ":q!<CR>")

-- Splits navigation
vim.keymap.set("n", "<leader>vv", "<C-w><C-W>")
vim.keymap.set("n", "<leader>sh", "<C-w>h")
vim.keymap.set("n", "<leader>sj", "<C-w>j")
vim.keymap.set("n", "<leader>sk", "<C-w>k")
vim.keymap.set("n", "<leader>sl", "<C-w>l")

-- Vertical split
vim.keymap.set("n", "<leader>ll", ":vs<CR>")

-- Buffers
vim.keymap.set("n", "<leader>d", ":bd<CR>")
vim.keymap.set("n", "<leader>D", ":bufdo bd<CR>")

-- Switch between last two buffers
vim.keymap.set('n', '<leader><leader>', '<c-^>')

-- Edit configuration init.lua bindings
vim.keymap.set('n', '<leader>ev', ':vsplit $MYVIMRC<cr>')
-- Source configuration file
vim.keymap.set('n', '<leader>ss', ':so<CR>')

-- Mappings for file manipulation
vim.keymap.set('n', '<leader>e', ":edit <C-R>=expand(\'%:h\').\'/\'<CR>")

-- Enable/disable relative line numbers
vim.keymap.set("n", "<F6>", ":set norelativenumber<CR>")
vim.keymap.set("n", "<F7>", ":set relativenumber<CR>")

-- Search mappings
vim.keymap.set('n', '<leader><space>', ':noh<cr>')

-- Global search (using CtrlSF)
vim.keymap.set('n', '<leader>a', ':CtrlSF ')

-- Copy/Paste system buffer
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+yg_')
vim.keymap.set('v', '<leader>y', '"+y')

vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+P')

-- Other
vim.keymap.set('n', 'J', 'mzJ`z')

-- Diagnostic toggles
vim.keymap.set('n', '<leader>tt', function()
  vim.diagnostic.config({ virtual_text = true })
end, { desc = "Enable virtual text" })

vim.keymap.set('n', '<leader>tr', function()
  vim.diagnostic.config({ virtual_text = false })
end, { desc = "Disable virtual text" })
