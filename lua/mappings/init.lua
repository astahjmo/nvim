local builtin = require('telescope.builtin')
local map = vim.keymap
map.set("n", "<C-n>", "<cmd>Lex<cr>")
map.set({"n", "i", "v", "c"}, "<C-s>", "<cmd>w<cr>")
map.set("n", "<Esc>", "<cmd>nohlsearch<cr>", {noremap = false, silent = true})
map.set('n', '<leader>ff', builtin.find_files, {})
map.set('n', '<leader>fg', builtin.live_grep, {})
map.set('n', '<leader>fb', builtin.buffers, {})
map.set('n', '<leader>fh', builtin.help_tags, {})
