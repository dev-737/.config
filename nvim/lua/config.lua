vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.number = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.o.clipboard = "unnamedplus"

-- require('onedark').setup { style = 'darker', transparent = true }
local status, catppuccin = pcall(require, 'catppuccin')
if not status then return end

-- onedark.setup { style = 'darker' }
-- onedark.load()

catppuccin.setup({
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    notify = true,
    noice = true,
    mason = true,
  },
})

catppuccin.load('mocha')

vim.cmd("hi IlluminatedWordRead gui=underline guibg=#383F4C")
vim.cmd("hi IlluminatedWordText gui=NONE guibg=#383F4C")
vim.cmd("hi IlluminatedWordWrite gui=NONE guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordRead gui=underline")
