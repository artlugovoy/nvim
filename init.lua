require('_remaps')
require('_comment')
require('_fugitive')
require('_lualine')
require('_nvim_tree')
require('_treesitter')
require('_telescope')
require('_lsp')
require('_lsp_endhints')
require('_neotest')
require('_avante')
require('_copilot_chat')
require('_cmp')

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
vim.o.scrolloff=5
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

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.wrap = false
vim.o.textwidth = 100
vim.o.formatoptions='n'

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.updatetime = 50

-- gruvbox colorscheme
vim.o.background = "dark"

vim.g.gruvbox_material_palette = 'mix'
vim.g.gruvbox_material_background = 'medium'

vim.cmd([[colorscheme gruvbox-material]])
