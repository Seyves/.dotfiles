local lualine_settings = require("lualine-setting")

vim.cmd.colorscheme("everforest")

local custom_lualine_theme = require 'lualine.themes.everforest'

custom_lualine_theme.normal.b.bg = "#282828"
custom_lualine_theme.normal.c.bg = "#282828"
custom_lualine_theme.insert.b.bg = "#282828"
custom_lualine_theme.insert.c.bg = "#282828"
custom_lualine_theme.visual.b.bg = "#282828"
custom_lualine_theme.visual.c.bg = "#282828"
custom_lualine_theme.command.b.bg = "#282828"
custom_lualine_theme.command.c.bg = "#282828"
custom_lualine_theme.inactive.b.bg = "#282828"
custom_lualine_theme.inactive.c.bg = "#282828"

lualine_settings.options.theme = custom_lualine_theme

require('lualine').setup(lualine_settings)

vim.cmd('hi! LineNr guibg=none ctermbg=none')
vim.cmd("highlight GitSignsAdd guibg=NONE")
vim.cmd("highlight GitSignsChange guibg=NONE")
vim.cmd("highlight GitSignsDelete guibg=NONE")
vim.cmd('highlight SignColumn guibg=NONE')
