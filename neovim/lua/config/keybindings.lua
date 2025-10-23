-- Set up Leader keys (must be set up before loading "config.lazy" for lazy.nvim)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Faster pane switching
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

-- Clear search selection
vim.keymap.set("n", "<Leader>c", ":noh<CR>")

-- Resize panes
vim.keymap.set("n", "<C-S-J>", ":resize +10<CR>")
vim.keymap.set("n", "<C-S-K>", ":resize -10<CR>")
vim.keymap.set("n", "<C-S-L>", ":vertical resize +10<CR>")
vim.keymap.set("n", "<C-S-H>", ":vertical resize -10<CR>")
