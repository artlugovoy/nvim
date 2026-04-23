-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
  -- Greeter plugin
  {
    'goolord/alpha-nvim',
    config = function()
      require('alpha').setup(require('alpha.themes.startify').config)
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.1',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim'
    },
    config = function()
      require('_telescope')
    end
  },

  -- File tree
  {
    'nvim-tree/nvim-tree.lua',
    keys = {
      { '<leader>nt', ':NvimTreeToggle<CR>', desc = 'Toggle NvimTree' },
      { '<leader>nf', ':NvimTreeFindFile<CR>', desc = 'Find file in NvimTree' },
      { '<leader>ne', ':NvimTreeResize 120<CR>', desc = 'Expand NvimTree' },
      { '<leader>nee', ':NvimTreeResize 40<CR>', desc = 'Shrink NvimTree' },
    },
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('_nvim_tree')
    end
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    commit = '42fc28ba', -- Latest stable commit for nvim 0.12+
    build = ':TSUpdate',
    config = function()
      require('_treesitter')
    end
  },

  -- Comments
  {
    'numToStr/Comment.nvim',
    config = function()
      require('_comment')
    end
  },

  -- Testing
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "olimorris/neotest-rspec",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim"
    },
    config = function()
      require('_neotest')
    end
  },

  -- Undo tree
  { 'mbbill/undotree' },

  -- Markdown preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- Search
  { 'dyng/ctrlsf.vim' },

  -- LSP Support
  {
    'williamboman/mason.nvim',
    config = function()
      require('_lsp')
    end
  },
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',

  -- Blink.cmp
  {
    'saghen/blink.cmp',
    version = '1.*',
    dependencies = { 'rafamadriz/friendly-snippets' },
    config = function()
      require('_cmp')
    end
  },

  -- Snippets
  'hrsh7th/vim-vsnip',
  'kitagry/vs-snippets',

  -- Avante required plugins
  'nvim-lua/plenary.nvim',
  'MunifTanjim/nui.nvim',
  'MeanderingProgrammer/render-markdown.nvim',

  -- Optional dependencies
  'nvim-tree/nvim-web-devicons',
  'HakonHarnes/img-clip.nvim',
  {
    'stevearc/dressing.nvim',
    config = function()
      require('_dressing')
    end
  },
  'folke/snacks.nvim',

  -- LSP endhints
  {
    "chrisgrieser/nvim-lsp-endhints",
    config = function()
      require("_lsp_endhints")
    end,
  },

  -- Copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  },

  -- CopilotChat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      'github/copilot.vim',
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('_copilot_chat')
    end
  },

  -- Copilot integration for blink.cmp
  {
    "giuxtaposition/blink-cmp-copilot",
    dependencies = { "copilot.lua" },
  },

  -- Avante.nvim
  {
    'yetone/avante.nvim',
    branch = 'main',
    build = 'make',
    config = function()
      require('avante').setup()
    end
  },

  -- Git
  {
    'tpope/vim-fugitive',
    config = function()
      require('_fugitive')
    end
  },
  { 'christoomey/vim-conflicted' },

  -- Matchup
  {
    'andymass/vim-matchup',
    init = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  },

  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('_lualine')
    end
  },

  -- Colorscheme
  { "sainnhe/gruvbox-material" },
}, {
  -- Configure lazy.nvim to use SSH for Git operations
  git = {
    url_format = "https://github.com/%s.git",
  },
  performance = {
    reset_packpath = true,
  },
})
