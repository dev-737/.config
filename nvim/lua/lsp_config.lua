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
  ensure_installed = { 'clangd', 'lua_ls', 'rust_analyzer', 'tsserver' }
})

local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then return end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local clangd_capabilities = capabilities;
clangd_capabilities.offsetEncoding = "utf-8"

-- Setup each server
lspconfig.tsserver.setup { capabilities = capabilities }
lspconfig.clangd.setup { capabilities = clangd_capabilities}
lspconfig.jsonls.setup { capabilities = capabilities }
lspconfig.rust_analyzer.setup { capabilities = capabilities }
lspconfig.prismals.setup { capabilities = capabilities }
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  settings = { Lua = { diagnostics = { globals = { 'vim', 'use' } } } }
}
