local lualine_settings = require("lualine-setting")

vim.cmd.colorscheme("kanagawa-dragon")

local custom_lualine_theme = require'lualine.themes.kanagawa'

custom_lualine_theme.normal.b.bg = "#1b1b1b"
custom_lualine_theme.normal.c.bg = "#1b1b1b"

lualine_settings.options.theme = custom_lualine_theme

require('lualine').setup(lualine_settings)

vim.cmd('hi! LineNr guibg=none ctermbg=none')
vim.cmd("highlight GitSignsAdd guibg=NONE")
vim.cmd("highlight GitSignsChange guibg=NONE")
vim.cmd("highlight GitSignsDelete guibg=NONE")
vim.cmd('highlight SignColumn guibg=NONE')
