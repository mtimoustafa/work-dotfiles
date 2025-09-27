-- Color scheme
return {
  "ellisonleao/gruvbox.nvim",
  priority = 999,
  config = function() 
    require("gruvbox").setup({
      transparent_mode = true,
    }) -- Config goes here

    -- vim.cmd.colorscheme("gruvbox")
  end,
}
