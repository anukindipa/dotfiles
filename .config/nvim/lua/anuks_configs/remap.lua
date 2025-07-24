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
-- use space+h
vim.keymap.set('t', '<leader>h', [[<C-\><C-n><C-w>h]])
vim.keymap.set('n', '<leader>h', '<C-w>h')

-- launch terminal
vim.keymap.set("n", "<leader>t", ":vertical botright term<CR>")
-- Map <Esc> in terminal to normal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- make it easier to save and exit
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- compile c++ file (main.cpp -> main) -for linux and windows respectively
if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.keymap.set("n", "<leader>rc", ":w<CR>:vertical botright terminal g++ \"%\" -o \"%<.exe\" && \"%<.exe\"<CR>")
else
    vim.keymap.set("n", "<leader>rc", ":w<CR>:vertical botright terminal g++ \"%\" -o \"%<.out\" && ./\"%<.out\"<CR>")
end
-- render markdown
-- vim.keymap.set("n", "<leader>rm", ":w<CR>:vertical botright terminal mdcat %<CR>")
vim.keymap.set("n", "<leader>rm", ":w<CR>: belowright terminal pandoc % -o %<.pdf -V geometry:margin=1in && zathura %<.pdf<CR>")


-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>")

--easier to manage clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste before from system clipboard" })

-- select all
vim.keymap.set('n', '<leader>a', 'ggVG', { desc = 'Select all' })
vim.keymap.set('n', '<leader>A', 'ggVG"+y', { desc = 'Select all + yank to clipboard' })

-- tab navigation
vim.keymap.set('n', '<Tab>', ':tabnext<CR>')
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>')

-- for leap
vim.keymap.set('n',        's', '<Plug>(leap-anywhere)')

-- lsp diagnostics
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Code Action' })
