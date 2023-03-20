local status, lsp_lines = pcall(require, "lsp_lines")
if not status then return end

-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
  virtual_text = false,
})

lsp_lines.setup();
