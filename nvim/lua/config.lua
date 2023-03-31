vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.number = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.o.clipboard = "unnamedplus"


-- local status, onedark = pcall(require, 'onedark')
-- if not status then return end

-- onedark.setup { style = 'darker' }
-- onedark.load()

vim.cmd("hi IlluminatedWordRead gui=underline guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordText gui=NONE guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordWrite gui=NONE guibg=#383F4C")
vim.cmd("set pumheight=10")
vim.cmd("set cursorline")
-- vim.cmd("hi IlluminatedWordRead gui=underline")
