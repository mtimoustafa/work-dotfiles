-- Git gutter+ features within Neovim
return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("codewindow").setup({
      signs_staged_enable = true,
    })

    vim.keymap.set("n", "<Leader>d", ":Gitsigns toggle_word_diff<CR>")
    vim.keymap.set("n", "<Leader>D", ":Gitsigns diffthis<CR>")
    vim.keymap.set("n", "<Leader>b", ":Gitsigns blame_line<CR>")
    vim.keymap.set("n", "<Leader>B", ":Gitsigns blame<CR>")
  end,
}

