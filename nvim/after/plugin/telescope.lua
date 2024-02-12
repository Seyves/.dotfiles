local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function() builtin.find_files({no_ignore=true}) end) 
vim.keymap.set('n', '<leader>ps', builtin.live_grep)

require("telescope").setup{
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
