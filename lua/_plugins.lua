-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Greeter plugin
  use {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.startify'.config)
    end,
    requires = { 'nvim-tree/nvim-web-devicons' }
  }


  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-ui-select.nvim' }
    }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    lazy = true,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'ryanoasis/vim-devicon'
    }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    "nvim-neotest/neotest",
    requires = {
      "nvim-neotest/nvim-nio",
      "olimorris/neotest-rspec",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim"
    }
  }

  use { 'mbbill/undotree' }

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = {
      "markdown" } end, ft = { "markdown" }, })

  use { 'dyng/ctrlsf.vim' }

  use {
    -- LSP Support
   'williamboman/mason.nvim',
   'williamboman/mason-lspconfig.nvim',
   'neovim/nvim-lspconfig',

    -- Autocompletion
   'hrsh7th/nvim-cmp',
   'hrsh7th/cmp-nvim-lsp',
   'hrsh7th/cmp-cmdline',
   'hrsh7th/cmp-vsnip',
   'hrsh7th/vim-vsnip',
   'kitagry/vs-snippets',

    -- Avante required plugins
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'MeanderingProgrammer/render-markdown.nvim',

    -- Optional dependencies
    'nvim-tree/nvim-web-devicons',
    'HakonHarnes/img-clip.nvim',
    'stevearc/dressing.nvim',
    'folke/snacks.nvim',
  }

  use {
    "chrisgrieser/nvim-lsp-endhints",
    config = function()
      require("lsp-endhints").setup() -- required, even if empty
    end,
  }

  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({})
    end,
  }

  use {
    "CopilotC-Nvim/CopilotChat.nvim",
    requires = {
      'github/copilot.vim',
      'nvim-lua/plenary.nvim'
    }
  }

  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  }

  -- Avante.nvim with build process
  use {
    'yetone/avante.nvim',
    branch = 'main',
    run = 'make',
    config = function()
      require('avante').setup()
    end
  }

  use { 'tpope/vim-fugitive' }
  use { 'christoomey/vim-conflicted' }

  use {
    'andymass/vim-matchup',
    setup = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use { "sainnhe/gruvbox-material" }
end)
