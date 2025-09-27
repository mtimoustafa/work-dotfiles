-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.spl = "en_ca"

-- Display settings
vim.opt.termguicolors = true

-- Scrolling and UI settings
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.sidescrolloff = 8
vim.opt.scrolloff = 8

-- Title
vim.opt.title = true
vim.opt.titlestring = "%f" -- TODO: Can't get this to work

-- Persist undo history between sessions
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"
vim.opt.undofile = true

-- Indentation configuration
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Search configuration
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Open new split panes to the right and bottom
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Disable the default netrw file explorer, in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- LSP
vim.lsp.inlay_hint.enable(true) -- TODO: not sure what this does yet?

-- Don't conceal markdown or other text
vim.opt.cole = 0
