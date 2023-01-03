vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.termguicolors = true

vim.notify = require("notify") -- cool notifications :D

require('onedark').setup { style = 'darker' }

vim.cmd('colorscheme onedark')
vim.cmd("hi IlluminatedWordRead gui=NONE guibg=#383F4C")
vim.cmd("hi IlluminatedWordText gui=NONE guibg=#383F4C")
vim.cmd("hi IlluminatedWordWrite gui=NONE guibg=#383F4C")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
