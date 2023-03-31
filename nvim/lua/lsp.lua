local status, lsp_zero = pcall(require, "lsp-zero")
if not status then return end;
local lsp = lsp_zero.preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

local clangd_capabilities = require('cmp_nvim_lsp').default_capabilities()
clangd_capabilities.offsetEncoding = "utf-8"
lsp.configure('clangd', { capabilities = clangd_capabilities })

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()
