require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- color scheme
  use 'navarasu/onedark.nvim'
  use 'catppuccin/nvim'
  -- syntax highlight
  use 'nvim-treesitter/nvim-treesitter'
  -- auto closing
  use 'windwp/nvim-autopairs'
  -- welcome screen on nvim startup
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  }
  -- terminal
  use { "akinsho/toggleterm.nvim", tag = '*' }
  -- editor tabs
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  -- fuzzy finder
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { { 'nvim-lua/plenary.nvim' } } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  -- vscode lookin error/warning list
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
  -- cool UI for LSP hover stuff
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
  })
  use "williamboman/mason-lspconfig.nvim"
  use "williamboman/mason.nvim"
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'rcarriga/nvim-notify'
  -- Git
  use 'lewis6991/gitsigns.nvim'
  -- vscode like icons for lsp-cmp
  use 'onsails/lspkind.nvim'
end)
