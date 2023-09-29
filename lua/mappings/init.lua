local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local builtin = require('telescope.builtin')
require("telescope").load_extension "file_browser"

local map = vim.keymap
map.set({ "n", "i", "v", "c" }, "<C-s>", "<cmd>w<cr>")
map.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { noremap = false, silent = true })
map.set('n', '<leader>ff', builtin.find_files, {})
map.set('n', '<leader>fg', builtin.live_grep, {})
map.set('n', '<leader>fb', builtin.buffers, {})
map.set('n', '<leader>fh', builtin.help_tags, {})
map.set('n', '<leader>rn', '<cmd>vim.lsp.buf.rename()<cr>')
map.set('n', '<A-i>', '<cmd>FloatermToggle<cr>')
map.set('t', '<A-i>', '<cmd>FloatermToggle<cr>')
map.set("n", "<space>n", "<cmd>Telescope file_browser<cr>", { noremap = true })
map.set("n", "<space>e", "<cmd>NvimTreeToggle<cr>", { noremap = true })
map.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>')
map.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>')
map.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>')
map.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>')
-- Move to previous/next
map.set('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map.set('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
map.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
map.set('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
map.set('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
map.set('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
map.set('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map.set('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map.set('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map.set('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
map.set('n', '<leader>c', '<Plug>OSCYankOperator')
map.set('n', '<leader>cc', '<leader>c_', {remap = true})
map.set('v', '<leader>c', '<Plug>OSCYankVisual')
-- Re-order to previous/next
-- Goto buffer in position...
-- Pin/unpin buffer
-- Close buffer
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
-- Sort automatically by...

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
