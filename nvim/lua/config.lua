-- -- fat cursor
-- vim.opt.guicursor = ""
vim.opt.signcolumn = "yes"

vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.number = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.o.clipboard = "unnamedplus"

vim.cmd("hi IlluminatedWordRead gui=underline guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordText gui=NONE guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordWrite gui=NONE guibg=#383F4C")
vim.cmd("set pumheight=10")
vim.cmd("set cursorline")
-- vim.cmd("hi IlluminatedWordRead gui=underline")

-- Disable virtual_text since it's redundant due to lsp_lines.
-- vim.diagnostic.config({
-- 	virtual_text = false,
-- })
