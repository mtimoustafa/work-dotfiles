-- File explorer
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<Leader>f", ":NvimTreeToggle<CR>")
    vim.keymap.set("n", "<Leader>F", ":NvimTreeFindFile<CR>")

    require("nvim-tree").setup({}) -- Config goes here
  end,
}
