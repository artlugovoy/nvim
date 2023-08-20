require('_remaps')
require('_lualine')
require('_nvim_tree')
require('_treesitter')
require('_telescope')
require('_lsp')

-- do not fold files
vim.o.foldenable = false

vim.o.encoding = "utf-8"

-- do not use swap files
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.backup = false

-- reload files when changed externally
vim.o.autoread = true

-- look & feel
vim.o.title = true
vim.o.cursorline = true
vim.o.scrolloff=2
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.showmode = true
vim.o.showcmd = true
vim.o.wildmenu = true
vim.o.wildmode = 'list:longest'
vim.o.visualbell = true
vim.o.ruler = true
vim.o.backspace = 'indent,eol,start'
vim.o.laststatus = 2
vim.o.number = true
vim.o.relativenumber = true
vim.o.undofile = true
vim.o.t_Co=256
vim.o.splitbelow = true
vim.o.splitright = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.textwidth = 100
vim.o.formatoptions='n'

-- gruvbox colorscheme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
