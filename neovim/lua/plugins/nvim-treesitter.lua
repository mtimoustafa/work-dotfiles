-- Parser for various languages, for syntax highlighting, for example
-- Use TSUpdate <parser> to add a parser for a language
-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      highlight = {
        enable = true,
      },
    }) -- Config goes here
  end,
}
