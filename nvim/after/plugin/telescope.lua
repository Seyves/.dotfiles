local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>sf', function() builtin.find_files({ no_ignore = true }) end, { desc = 'Search files' })
vim.keymap.set('n', '<leader>sw', builtin.live_grep, { desc = 'Search word' })
vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search keymaps' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search diagnostics' })
vim.keymap.set('n', '<leader>sa', builtin.current_buffer_fuzzy_find, { desc = 'Search appearence in current file' })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search buffers' })

require("telescope").setup {
    pickers = {
        find_files = {
            hidden = true
        }
    },
    defaults = {
        file_ignore_patterns = { "node_modules", ".git/" },
        preview = {
            -- Disable tree-sitter in telescope for performance
            treesitter = false
        }
    },
}
