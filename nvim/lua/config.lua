vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.termguicolors = true

vim.notify = require("notify") -- cool notifications :D

require('onedark').setup { style = 'darker' }
vim.api.nvim_command 'colorscheme onedark'
