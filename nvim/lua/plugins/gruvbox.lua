-- Color scheme
return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = function() 
    require("gruvbox").setup({
      transparent_mode = true,
    }) -- Config goes here
    vim.cmd.colorscheme("gruvbox")
  end,
}
