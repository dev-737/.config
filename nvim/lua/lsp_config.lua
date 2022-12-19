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
lsp.setup()

-- Set up lspconfig.
-- local lspconfig_status, lspconfig = pcall(require, 'lspconfig')

-- if not lspconfig_status then
--  return
-- end

local lspconfig = require("lspconfig")

local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.tsserver.setup { capabilities = capabilities }
lspconfig.jsonls.setup { capabilities = capabilities }
lspconfig.prismals.setup { capabilities = capabilities }
lspconfig.sumneko_lua.setup {
  capabilities = capabilities,
  settings = { Lua = { diagnostics = { globals = { 'vim', 'use' } } } }
}
