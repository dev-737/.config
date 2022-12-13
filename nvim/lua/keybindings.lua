local keymap = vim.keymap.set
keymap('n', '<c-s>', 'w<CR', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})
local opts = { noremap = true }
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', '<c-a>', ':Alpha<cr>', opts)

-- telescope
local telescope_status, builtin = pcall(require, 'telescope.builtin')

if not telescope_status then
  return
end

keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fh', builtin.help_tags, {})

-- toggle filetree
keymap('n', '<c-n>', ':NvimTreeFindFileToggle<cr>', opts)

local function pluginmap(key, map)
  keymap('n', key, map, opts)
end

pluginmap('gd', '<cmd>Lspsaga peek_definition<cr>')
pluginmap('gD', ':lua vim.lsp.buf.declaration()<cr>')
pluginmap('gi', ':lua vim.lsp.buf.implementation()<cr>')
pluginmap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
pluginmap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
pluginmap('gr', ':lua vim.lsp.buf.references()<cr>')
pluginmap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
pluginmap('K', '<cmd>Lspsaga hover_doc<CR>')
pluginmap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')
pluginmap('<leader>af', '<cmd>Lspsaga code_action<cr>')
pluginmap('<F2>', '<cmd>Lspsaga rename<CR>')

-- formatting
pluginmap('<A-F>', ':lua vim.lsp.buf.format()<cr>')

-- toggle trouble panel
pluginmap('tT', '<cmd>TroubleToggle<cr>')
