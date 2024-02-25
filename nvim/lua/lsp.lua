-- local status, lsp_zero = pcall(require, "lsp-zero")
-- if not status then return end;
-- local lsp = lsp_zero.preset({
--   name = 'minimal',
--   set_lsp_keymaps = true,
--   manage_nvim_cmp = true,
--   suggest_lsp_servers = false,
-- })
--
-- local clangd_capabilities = require('cmp_nvim_lsp').default_capabilities()
-- clangd_capabilities.offsetEncoding = "utf-8"
-- lsp.configure('clangd', { capabilities = clangd_capabilities })
--
-- -- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()
--
-- lsp.setup()

-- local lsp = require('lsp-zero').preset({})
--
-- lsp.on_attach(function(client, bufnr)
--   lsp.default_keymaps({buffer = bufnr})
-- end)
--
-- -- (Optional) Configure lua language server for neovim
-- -- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
--
-- lsp.setup()

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

--- if you want to know more about lsp-zero and mason.nvim
--- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      local lua_opts = lsp_zero.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  }
})

local cmp = require('cmp')
local cmp_format = lsp_zero.cmp_format()

cmp.setup({
  formatting = cmp_format,
  mapping = cmp.mapping.preset.insert({
    -- scroll up and down the documentation window
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
})
