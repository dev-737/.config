vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.termguicolors = true

-- cool notifications :D
vim.notify = require("notify")

-- require('onedark').setup { style = 'darker', transparent = true }

require("catppuccin").setup({
  integrations = {
    cmp = true,
    fern = false,
    fidget = false,
    gitsigns = true,
    illuminate = true,
    lsp_saga = true,
    lsp_trouble = true,
    markdown = true,
    mason = true,
    notify = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
    treesitter_context = false,
  }
})

vim.cmd('colorscheme catppuccin-mocha')
-- vim.cmd("hi IlluminatedWordRead gui=underline guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordText gui=NONE guibg=#383F4C")
-- vim.cmd("hi IlluminatedWordWrite gui=NONE guibg=#383F4C")

vim.cmd("hi IlluminatedWordRead gui=underline")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

