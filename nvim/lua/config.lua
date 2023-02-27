vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.number = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- cool notifications :D
vim.notify = require("notify")

-- require('onedark').setup { style = 'darker', transparent = true }

vim.cmd.colorscheme "catppuccin-mocha"
vim.cmd("hi IlluminatedWordRead gui=underline guibg=#383F4C")
vim.cmd("hi IlluminatedWordText gui=NONE guibg=#383F4C")
vim.cmd("hi IlluminatedWordWrite gui=NONE guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordRead gui=underline")

