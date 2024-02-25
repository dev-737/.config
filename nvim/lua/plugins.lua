local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("lazy").setup({
  checker = { enabled = true },
  change_detection = { notify = true },
  -- color scheme
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Ensure it loads first
    config = function() vim.cmd("colorscheme onedark") end,
  },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   enabled = false,
  --   config = function()
  --     local catppuccin = require("catppuccin")
  --     catppuccin.setup({
  --       integrations = {
  --         cmp = true,
  --         gitsigns = true,
  --         nvimtree = true,
  --         telescope = true,
  --         notify = true,
  --         noice = true,
  --         mason = true,
  --       },
  --     })
  --
  --     catppuccin.load("macchiato")
  --   end,
  -- },
  -- {
  --   "navarasu/onedark.nvim",
  --   name = "onedark",
  --   enabled = false,
  --   config = function()
  --     local onedark = require("onedark")
  --     onedark.setup({ style = "warmer" })
  --     onedark.load()
  --   end,
  -- },
  -- {
  --   "joshdick/onedark.vim",
  --   name = "onedark.vim",
  --   config = function ()
  --     vim.cmd('colorscheme onedark')
  --   end
  -- },
  {
    "rmehri01/onenord.nvim",
    enabled = false,
    config = function()
      require("onenord").setup()
    end,
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
    -- lazy = true, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- load the colorscheme here
      vim.cmd("colorscheme tokyonight")
    end,
  },
  -- syntax highlight
  "nvim-treesitter/nvim-treesitter",
  {
    "VonHeikemen/lsp-zero.nvim",
    lazy = true,
    branch = "v3.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },          -- Required
      { "williamboman/mason-lspconfig.nvim" }, -- Optional
      {                                     -- Optional
        "williamboman/mason.nvim",
        build = function()
          pcall(vim.cmd, "MasonUpdate")
        end,
      },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },      -- Required
      { "hrsh7th/cmp-nvim-lsp" },  -- Required
      { "L3MON4D3/LuaSnip" },      -- Required
      { "hrsh7th/cmp-buffer" },    -- Optional
      { "hrsh7th/cmp-path" },      -- Optional
      { "saadparwaiz1/cmp_luasnip" }, -- Optional
      { "hrsh7th/cmp-cmdline" },   -- Optional
      { "hrsh7th/cmp-nvim-lua" },  -- Optional

      -- Snippets
      { "rafamadriz/friendly-snippets" }, -- Optional
    },
  },
  -- better inline errors
  { "https://git.sr.ht/~whynothugo/lsp_lines.nvim", lazy = true },
  -- cool UI for LSP
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    lazy = true,
  },
  -- vscode like icons for lsp-cmp
  -- "onsails/lspkind.nvim",
  -- vscode lookin error/warning list
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
  -- ui for cmd line
  {
    "folke/noice.nvim",
    lazy = true,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },
  -- cool notifications
  {
    "rcarriga/nvim-notify",
    lazy = true,
  },
  -- auto closing
  {
    "windwp/nvim-autopairs",
    lazy = true,
  },
  "nvim-tree/nvim-web-devicons",
  -- welcome screen on nvim startup
  {
    "glepnir/dashboard-nvim",
    lazy = true,
    event = "VimEnter",
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  -- terminal
  {
    "akinsho/toggleterm.nvim",
    lazy = true,
    version = "*",
  },
  -- editor tabs
  {
    "akinsho/bufferline.nvim",
    lazy = true,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  }, -- catppuccin/nvim was a dependency
  -- fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
  },
  { "nvim-telescope/telescope-fzf-native.nvim",     build = "make", lazy = true },
  -- filetree
  {
    "nvim-tree/nvim-tree.lua",
    lazy = true,
  },
  -- ui component
  { "MunifTanjim/nui.nvim", lazy = true },
  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    lazy = true,
  },
  -- Git
  {
    "lewis6991/gitsigns.nvim",
    lazy = true,
  },
  -- formatting and linting
  {
    "jose-elias-alvarez/null-ls.nvim",
    lazy = true,
  },
  -- toggle comments
  {
    "numToStr/Comment.nvim",
    lazy = true,
  },
  -- highlight hex/rgb with colors
  {
    "NvChad/nvim-colorizer.lua",
    lazy = true,
  },
  -- highlight text occurences in buffer
  {
    "RRethy/vim-illuminate",
    lazy = true,
  },
  -- lsp progress in bottom
  { "j-hui/fidget.nvim",    lazy = true },
  -- Max charecter per line alert tool
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "120",
      disabled_filetypes = { "NvimTree", "lazy", "mason", "help", "text", "markdown", "dashboard" },
    },
  },
  -- uh those things that help you know which scope you're inside
  { "lukas-reineke/indent-blankline.nvim", main = "ibl",                          opts = {} },
  -- the best git project commit diffbar/diffview
  -- vscode like git sidebar, suepr useful
  { "sindrets/diffview.nvim",              dependencies = "nvim-lua/plenary.nvim" },
  -- vsocde-like top symbols winbar
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
  -- the thing that shows git blame
  "tpope/vim-fugitive",
  -- displays keybindings in dashboard
  "folke/which-key.nvim",
  -- matching brace colors
  "HiPhish/nvim-ts-rainbow2",
  -- github copilot
  "github/copilot.vim",
  -- discord rpc
  "andweeb/presence.nvim",
  -- neovim config completion
  { "folke/neodev.nvim", opts = {} },
})
