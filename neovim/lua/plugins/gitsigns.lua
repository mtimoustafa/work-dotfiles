-- Git gutter+ features within Neovim
return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup({
      signs_staged_enable = true,
      on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        vim.keymap.set('n', ']c', function() gitsigns.nav_hunk('next') end, { desc = 'GitSigns go to next hunk' })
        vim.keymap.set('n', '[c', function() gitsigns.nav_hunk('prev') end, { desc = 'GitSigns go to previous hunk' })

        vim.keymap.set('n', '<Leader>d', ':Gitsigns toggle_word_diff<CR>')
        vim.keymap.set('n', '<Leader>D', ':Gitsigns diffthis<CR>')
        vim.keymap.set('n', '<Leader>b', ':Gitsigns blame_line<CR>', { desc = 'Gitsigns blame line' })
        vim.keymap.set('n', '<Leader>B', ':Gitsigns blame<CR>', { desc = 'Gitsigns blame' })
      end,
    })
  end,
}

