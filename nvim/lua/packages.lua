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
end)
