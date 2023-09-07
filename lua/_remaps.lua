-- Map leader to comma
vim.g.mapleader = ","
vim.o.timeoutlen = 400

-- Map escape to jk
vim.keymap.set("i", "jk", "<Esc>")

-- save and exit 
vim.keymap.set("n", "<leader>q", ":wqa!<CR>")
vim.keymap.set("n", "<leader>sq", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w!<CR>")
vim.keymap.set("n", "<leader><Esc>", ":q!<CR>")

-- splits
vim.keymap.set("n", "<leader>vv", "<C-w><C-W>")
vim.keymap.set("n", "<leader>sh", "<C-w>h")
vim.keymap.set("n", "<leader>sj", "<C-w>j")
vim.keymap.set("n", "<leader>sk", "<C-w>k")
vim.keymap.set("n", "<leader>sl", "<C-w>l")

vim.keymap.set("n", "<leader>vl", ":vs<CR>")

-- buffers
vim.keymap.set("n", "<leader>d", ":bd<CR>")
vim.keymap.set("n", "<leader>D", ":bufdo bd<CR>")

-- switch between last two buffers
vim.keymap.set('n', '<leader><leader>', '<c-^>')

-- edit configuration init.lua bindings
vim.keymap.set('n', '<leader>ev', ':vsplit $MYVIMRC<cr>')

-- Mappings  for file maniuplation
vim.keymap.set('n', '<leader>e', ":edit <C-R>=expand(\'%:h\').\'/\'<CR>")

-- enable/disable relative line numbers
vim.keymap.set("n", "<F6>", ":set norelativenumber<CR>")
vim.keymap.set("n", "<F7>", ":set relativenumber<CR>")

-- search mappings
vim.keymap.set('n', '<leader><space>', ':noh<cr>')
vim.keymap.set('n', '<leader><space>', ':noh<cr>')

-- Enabe vim to read directory specific .vimrc
vim.o.exrc = true

-- Other
vim.keymap.set('n', 'J', 'mzJ`z')
