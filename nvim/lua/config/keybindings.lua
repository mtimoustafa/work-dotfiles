-- Set up Leader keys (must be set up before loading "config.lazy" for lazy.nvim)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Faster pane switching
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

vim.keymap.set("n", "<Space>", ":noh")
