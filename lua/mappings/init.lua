local builtin = require('telescope.builtin')
require("telescope").load_extension "file_browser"

local map = vim.keymap
map.set({"n", "i", "v", "c"}, "<C-s>", "<cmd>w<cr>")
map.set("n", "<Esc>", "<cmd>nohlsearch<cr>", {noremap = false, silent = true})
map.set('n', '<leader>ff', builtin.find_files, {})
map.set('n', '<leader>fg', builtin.live_grep, {})
map.set('n', '<leader>fb', builtin.buffers, {})
map.set('n', '<leader>fh', builtin.help_tags, {})
map.set('n', '<leader>rn', '<cmd>vim.lsp.buf.rename()<cr>')
map.set('n', '<A-i>', '<cmd>FloatermToggle<cr>')
map.set('t', '<A-i>', '<cmd>FloatermToggle<cr>')
map.set("n", "<space>fb","<cmd>Telescope file_browser<cr>", { noremap = true })
