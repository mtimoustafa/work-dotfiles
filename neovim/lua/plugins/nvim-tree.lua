-- File explorer
return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    vim.keymap.set('n', '<Leader>f', ':NvimTreeToggle<CR>')
    vim.keymap.set('n', '<Leader>F', ':NvimTreeFindFile<CR>')

    require('nvim-tree').setup({
      view = {
        width = 50,
      },
      renderer = {
        hidden_display = 'all',
        indent_markers = {
          enable = true,
        },
      },
      filters = {
        git_ignored = false,
      },
    }) -- Config goes here
  end,
}
