 local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
 -- uncomment if you don't have lazy installed
 -- if not vim.loop.fs_stat(lazypath) then
 --   vim.fn.system({
 --     "git",
 --     "clone",
 --     "--filter=blob:none",
 --     "https://github.com/folke/lazy.nvim.git",
 --     "--branch=stable",  -- latest stable release
 --     lazypath,
 --   })
 -- end
vim.opt.rtp:prepend(lazypath)

require('plugins')
require('config')
require('keybindings')
require('lualine-nvim')
require('lsp_ui')
require("lsp")
require('filetree')
require('treesitter')
require('telescope_config')
require('trouble_config')
require('terminal')
require('gitsigns_config')
require('autopairs')
require('tabs')
require('completions')
require('formatters')
require('comment_config')
require('colorizer_config')
require('selection_highlight')
require('notifications')
require('lsp_load_notifications')
require('dashboard_config')
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
