local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }


map("n", "<C-k>", "9k", opt)
map("n", "<C-j>", "9j", opt)


map("n", "<C-s>", ":w", opt)

-- nvimTree
map('n', '<C-n>', ':NvimTreeFindFile<CR>', opt)

-- bufferline 左右切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n", "<C-x>", ":BufferLineCycleNext<CR>:BufferLineCloseLeft<CR>", opt)

-- Habit breaking
-- http://vimcasts.org/blog/2013/02/habit-breaking-habit-making/

map("n", "<Up>", "<NOP>", opt)
map("n", "<Down>", "<NOP>", opt)
map("n", "<Left>", "<NOP>", opt)
map("n", "<Right>", "<NOP>", opt)
