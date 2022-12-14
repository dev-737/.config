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

local function pluginmap(key, map, c_opts)
  keymap('n', key, map, c_opts or opts)
end

local silentOpt = { silent = true, noremap = true }

-- Lspsaga UIs
pluginmap('gd', '<cmd>Lspsaga peek_definition<cr>', silentOpt)
pluginmap('K', '<cmd>Lspsaga hover_doc<CR>', silentOpt)
pluginmap('<F2>', '<cmd>Lspsaga rename<CR>', silentOpt)
pluginmap('<leader>af', '<cmd>Lspsaga code_action<cr>', silentOpt)

-- terminal toggle
pluginmap('<A-`>', '<CMD>Lspsaga open_floaterm<cr>', silentOpt)
pluginmap('<A-t:t>', '<cmd>Lspsaga close_floaterm<cr>', silentOpt)



pluginmap('gD', ':lua vim.lsp.buf.declaration()<cr>')
pluginmap('gi', ':lua vim.lsp.buf.implementation()<cr>')
pluginmap('gw', ':lua vim.lsp.buf.document_symbol()<cr>')
pluginmap('gw', ':lua vim.lsp.buf.workspace_symbol()<cr>')
pluginmap('gr', ':lua vim.lsp.buf.references()<cr>')
pluginmap('gt', ':lua vim.lsp.buf.type_definition()<cr>')
pluginmap('<c-k>', ':lua vim.lsp.buf.signature_help()<cr>')

-- formatting
pluginmap('<A-F>', '<cmd>vim.lsp.buf.format()<cr>')

-- trouble panel
pluginmap('tT', '<cmd>TroubleToggle<cr>')

-- tabs

-- Move to previous/next
pluginmap('<A-,>', '<Cmd>BufferPrevious<CR>', silentOpt)
pluginmap('<A-.>', '<Cmd>BufferNext<CR>', silentOpt)
-- Re-order to previous/next
pluginmap('<A-<>', '<Cmd>BufferMovePrevious<CR>', silentOpt)
pluginmap('<A->>', '<Cmd>BufferMoveNext<CR>', silentOpt)
-- Goto buffer in position...
pluginmap('<A-1>', '<Cmd>BufferGoto 1<CR>', silentOpt)
pluginmap('<A-2>', '<Cmd>BufferGoto 2<CR>', silentOpt)
pluginmap('<A-3>', '<Cmd>BufferGoto 3<CR>', silentOpt)
pluginmap('<A-4>', '<Cmd>BufferGoto 4<CR>', silentOpt)
pluginmap('<A-5>', '<Cmd>BufferGoto 5<CR>', silentOpt)
pluginmap('<A-6>', '<Cmd>BufferGoto 6<CR>', silentOpt)
pluginmap('<A-7>', '<Cmd>BufferGoto 7<CR>', silentOpt)
pluginmap('<A-8>', '<Cmd>BufferGoto 8<CR>', silentOpt)
pluginmap('<A-9>', '<Cmd>BufferGoto 9<CR>', silentOpt)
pluginmap('<A-0>', '<Cmd>BufferLast<CR>', silentOpt)
-- Pin/unpin buffer
pluginmap('<A-p>', '<Cmd>BufferPin<CR>', silentOpt)
-- Close buffer
pluginmap('<A-w>', '<Cmd>BufferClose<CR>', silentOpt)
-- Magic buffer-picking mode
pluginmap('<C-p>', '<Cmd>BufferPick<CR>', silentOpt)
-- Sort automatically by...
pluginmap('<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', silentOpt)
pluginmap('<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', silentOpt)
pluginmap('<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', silentOpt)
pluginmap('<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', silentOpt)
