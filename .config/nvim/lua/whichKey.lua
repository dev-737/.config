vim.o.timeout = true
vim.o.timeoutlen = 300

local status, whichKey = pcall(require, "which-key");
if not status then return end;

whichKey.setup()
