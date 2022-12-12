local keymap = vim.api.nvim_set_keymap
keymap('n', '<c-s>', 'w<CR', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})
local opts = { noremap = true }
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', '<c-n>', ':Alpha<cr>', opts)


local function lspmap(key, map)
  keymap('n', key, map, opts)
end

lspmap('gd', ':lua vim.lsp.buf.definition()<cr>')
lspmap('gD', ':lua vim.lsp.buf.declaration()<cr>')
lspmap('gi', ':lua vim.lsp.buf.implementation()<cr>')
lspmap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
lspmap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
lspmap('gr', ':lua vim.lsp.buf.references()<cr>')
lspmap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
lspmap('K', ':lua vim.lsp.buf.hover()<cr>')
lspmap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
lspmap('<leader>af', ':lua vim.lsp.buf.code_action()<cr>')
lspmap('<F2>', ':lua vim.lsp.buf.rename()<cr>')

-- formatting
lspmap('<A-F>', ':lua vim.lsp.buf.format()<cr>')
