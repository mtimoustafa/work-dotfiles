-- Fuzzy finder
return {
  "nvim-telescope/telescope.nvim",
  branch = '0.1.x',
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- BurntSushi/ripgrep is a native dependency for live_grep and grep_string
    -- sharkdp/fd is a native dependency for more search features
    "nvim-telescope/telescope-fzy-native.nvim", -- for improving sorting performance
  },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>t', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>r', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>s', builtin.current_buffer_fuzzy_find, { desc = 'Telescope find in current buffer' })
    vim.keymap.set('n', '<leader>k', builtin.commands, { desc = 'Telescope list vim commands' })
    vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })

    require("telescope").setup({}) -- Config goes here
  end,
}
