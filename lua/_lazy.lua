return {
  -- Greeter plugin
  {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end,
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-ui-select.nvim'
    }
  },

  -- File tree
  {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'ryanoasis/vim-devicon'
    }
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

  -- Comment plugin
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
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
    }
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
    ft = { "markdown" }
  },

  -- Search
  { 'dyng/ctrlsf.vim' },

  -- LSP Support
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  { 'neovim/nvim-lspconfig' },

  -- Autocompletion
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-cmdline' },
  { 'hrsh7th/cmp-vsnip' },
  { 'hrsh7th/vim-vsnip' },
  { 'kitagry/vs-snippets' },

  -- Avante required plugins
  { 'nvim-lua/plenary.nvim' },
  { 'MunifTanjim/nui.nvim' },
  { 'MeanderingProgrammer/render-markdown.nvim' },

  -- Optional dependencies
  { 'nvim-tree/nvim-web-devicons' },
  { 'HakonHarnes/img-clip.nvim' },
  { 'stevearc/dressing.nvim' },
  { 'folke/snacks.nvim' },

  -- LSP endhints
  {
    "chrisgrieser/nvim-lsp-endhints",
    config = function()
      require("lsp-endhints").setup() -- required, even if empty
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

  -- Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      'github/copilot.vim',
      'nvim-lua/plenary.nvim'
    }
  },

  -- Copilot completion
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  },

  -- Avante.nvim with build process
  {
    'yetone/avante.nvim',
    branch = 'main',
    build = 'make',
    config = function()
      require('avante').setup()
    end
  },

  -- Git plugins
  { 'tpope/vim-fugitive' },
  { 'christoomey/vim-conflicted' },

  -- Matchup
  {
    'andymass/vim-matchup',
    init = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  },

  -- Status line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- Color scheme
  { "sainnhe/gruvbox-material" }
}
