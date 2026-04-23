-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- General options
vim.o.timeoutlen = 400
vim.o.foldenable = false
vim.o.encoding = "utf-8"
vim.o.swapfile = false
vim.o.writebackup = false
vim.o.backup = false
vim.o.autoread = true

-- UI configuration
vim.o.title = true
vim.o.cursorline = true
vim.o.scrolloff = 5
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
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.colorcolumn = '100'

-- Tabs and indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.textwidth = 100
vim.o.formatoptions = 'n'

-- Search
vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.updatetime = 50

-- Theme options (if applicable to some plugins)
vim.o.background = "dark"
vim.g.gruvbox_material_palette = 'mix'
vim.g.gruvbox_material_background = 'medium'

-- Enable vim to read directory specific .vimrc (from _remaps.lua)
vim.o.exrc = true
