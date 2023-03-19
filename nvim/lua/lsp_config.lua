local mason_status, mason = pcall(require, "mason")
local lsp_status, lsp = pcall(require, "mason-lspconfig")
local lspconfig_status, lspconfig = pcall(require, 'lspconfig')

if not mason_status then return end
if not lsp_status then return end
if not lspconfig_status then return end

-- loading in mason
mason.setup()
-- loading in lsp installer
lsp.setup { ensure_installed = { 'clangd', 'lua_ls', 'rust_analyzer', 'tsserver' } }

-- Setup capabilities to include nvim-cmp
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
