vim.g.mapleader = " "
-- from lazy.nvim docs
vim.g.maplocalleader = "\\"

-- better navigation
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]])
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]])
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]])
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]])
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- launch terminal
vim.keymap.set("n", "<leader>t", ":vertical botright term<CR>")
-- Map <Esc> in terminal to normal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
-- make it easier to exit
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- compile c++ file (main.cpp -> main)
vim.keymap.set("n", "<leader>rc", ":w<CR>:vertical botright term://g++ % -o %< && ./%<<CR>")

-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")
