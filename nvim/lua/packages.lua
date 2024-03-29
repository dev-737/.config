require('packer').startup(function(use)
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
  use 'nvim-tree/nvim-web-devicons'
  -- terminal
  use { "akinsho/toggleterm.nvim", tag = '*' }
  -- editor tabs
  use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
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
  -- ui component
  use 'MunifTanjim/nui.nvim'
  -- statusline
  use 'nvim-lualine/lualine.nvim'
  -- cool notifications
  use 'rcarriga/nvim-notify'
  -- ui for cmd line
  use({
  "folke/noice.nvim",
  requires = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
    }
})
  -- github copilot 
  use 'github/copilot.vim'
  -- Git
  use 'lewis6991/gitsigns.nvim'
  -- vscode like icons for lsp-cmp
  use 'onsails/lspkind.nvim'
  -- formatting and linting
  use 'jose-elias-alvarez/null-ls.nvim'
  -- toggle comments
  use "numToStr/Comment.nvim"
  -- highlight hex/rgb with colors
  use 'NvChad/nvim-colorizer.lua'
  -- highlight text occurences in buffer
  use 'RRethy/vim-illuminate'
  -- lsp progress in bottom 
  use {
    'j-hui/fidget.nvim',
    config = function ()
      require"fidget".setup{}
    end
  }
end)

