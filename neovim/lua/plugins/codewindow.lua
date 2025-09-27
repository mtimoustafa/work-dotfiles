-- Minimap
return {
  "gorbit99/codewindow.nvim",
  config = function()
    local codewindow = require("codewindow")

    codewindow.setup({
      auto_enable = true,
      window_border = "none", -- Options: https://neovim.io/doc/user/options.html#'winborder'
    })

    codewindow.apply_default_keybinds()
  end,
}

