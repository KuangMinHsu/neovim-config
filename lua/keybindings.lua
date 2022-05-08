local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }


map("n", "<C-k>", "9k", opt)
map("n", "<C-j>", "9j", opt)


map("n", "<C-s>", ":w", opt)

-- nvimTree
map('n', '<C-n>', ':NvimTreeFindFileToggle<CR>', opt)

-- bufferline 左右切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-x>", ":BufferLinePickClose<CR>", opt)

-- Habit breaking
-- http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/

map("n", "<Up>", "<NOP>", opt)
map("n", "<Down>", "<NOP>", opt)
map("n", "<Left>", "<NOP>", opt)
map("n", "<Right>", "<NOP>", opt)

-- clear highlight

map("n", "<esc><esc>", ":noh<CR>", opt)

map("n", "<Leader>ff", ":Telescope find_files<CR>", opt)
map("n", "<Leader>fg", ":Telescope live_grep<CR>", opt)
map("n", "<Leader>fb", ":Telescope buffers<CR>", opt)
map("n", "<Leader>fs", ":Telescope grep_string<CR>", opt)

-- lsp-config
-- https://github.com/neovim/nvim-lspconfig#Keybindings-and-completion
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
