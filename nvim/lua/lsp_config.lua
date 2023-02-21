-- loading in mason
-- local mason_status, mason = pcall(require, "mason")

-- if not mason_status then
--  return
-- end
local mason = require("mason")
mason.setup()
-- loading in lsp installer
-- local lsp_status, lsp = pcall(require, "mason-lspconfig")

-- if not lsp_status then
--  return
-- end
local lsp = require("mason-lspconfig")
lsp.setup({
  ensure_installed = { 'lua_ls', 'rust_analyzer', 'tsserver' }
})

-- Set up lspconfig.
-- local lspconfig_status, lspconfig = pcall(require, 'lspconfig')

-- if not lspconfig_status then
--  return
-- end

local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.tsserver.setup { capabilities = capabilities }
lspconfig.jsonls.setup { capabilities = capabilities }
lspconfig.rust_analyzer.setup { capabilities = capabilities }
lspconfig.prismals.setup { capabilities = capabilities }
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = { Lua = { diagnostics = { globals = { 'vim', 'use' } } } }
}
