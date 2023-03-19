require('lazy').setup({
  -- color scheme
  { 'catppuccin/nvim',       name = 'catppuccin' },
  { 'navarasu/onedark.nvim', name = 'onedark',   enabled = false },
  {
    lazy = true,
    {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },
    -- syntax highlight
    'nvim-treesitter/nvim-treesitter',
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },       -- Required
        { 'williamboman/mason.nvim' },     -- Optional
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },   -- Required
        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'hrsh7th/cmp-buffer' }, -- Optional
        { 'hrsh7th/cmp-path' },   -- Optional
        { 'saadparwaiz1/cmp_luasnip' }, -- Optional
        { 'hrsh7th/cmp-cmdline' },
        { 'hrsh7th/cmp-nvim-lua' }, -- Optional

        -- Snippets
        { 'L3MON4D3/LuaSnip' },       -- Required
        { 'rafamadriz/friendly-snippets' }, -- Optional
      }
    },
    -- cool UI for LSP
    { 'glepnir/lspsaga.nvim', branch = 'main' },
    -- vscode like icons for lsp-cmp
    'onsails/lspkind.nvim',
    -- vscode lookin error/warning list
    { 'folke/trouble.nvim',   dependencies = 'nvim-tree/nvim-web-devicons' },
    -- ui for cmd line
    {
      'folke/noice.nvim',
      dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify',
      },
    },
    -- cool notifications
    { 'rcarriga/nvim-notify',  config = function() vim.notify = require("notify") end },
    -- auto closing
    { 'windwp/nvim-autopairs', },
    'nvim-tree/nvim-web-devicons',
    -- welcome screen on nvim startup
    { 'goolord/alpha-nvim',      dependencies = { 'nvim-tree/nvim-web-devicons' }, },
    -- terminal
    { 'akinsho/toggleterm.nvim', version = '*' },
    -- editor tabs
    { 'akinsho/bufferline.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', 'catppuccin/nvim' } },
    -- fuzzy finder
    {
      'nvim-telescope/telescope.nvim',
      branch = '0.1.x',
      dependencies = {
        { 'nvim-lua/plenary.nvim' } },
    },
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    -- filetree
    'nvim-tree/nvim-tree.lua',
    -- ui component
    'MunifTanjim/nui.nvim',
    -- statusline
    'nvim-lualine/lualine.nvim',
    -- github copilot
    'github/copilot.vim',
    -- Git
    'lewis6991/gitsigns.nvim',
    -- formatting and linting
    'jose-elias-alvarez/null-ls.nvim',
    -- toggle comments
    'numToStr/Comment.nvim',
    -- highlight hex/rgb with colors
    'NvChad/nvim-colorizer.lua',
    -- highlight text occurences in buffer
    'RRethy/vim-illuminate',
    -- lsp progress in bottom
    'j-hui/fidget.nvim',
    -- i dont even know
    "tpope/vim-fugitive",
    -- git blame and more (like vscode git view)
    "aaronhallaert/advanced-git-search.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  }
})
