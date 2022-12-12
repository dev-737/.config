require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'catppuccin/nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
  use {"williamboman/mason.nvim"}
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
end)
