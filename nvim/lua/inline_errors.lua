local status, lsp_lines = pcall(require, "lsp_lines")
if not status then return end

lsp_lines.setup();
