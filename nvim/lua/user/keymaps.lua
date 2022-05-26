local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ","

keymap('n', '<C-h>', '<C-w>h', opts )
keymap('n', '<C-l>', '<C-w>l', opts )
keymap('n', '<C-n>', '<C-w>n', opts )
keymap('n', '<C-j>', '<C-w>j', opts )
keymap('n', '<C-k>', '<C-w>k', opts )
keymap('n', '<C-w>q' , ':bdelete!<CR>' , term_opts )
keymap("n", "<S-h>", ":BufferLineCyclePrev<cr>", term_opts )
keymap("n", "<S-l>", ":BufferLineCycleNext<cr>", term_opts )
keymap('n', '<c-f>', ':NvimTreeFindFileToggle<cr>' , term_opts )
