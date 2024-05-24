local lualine_settings = require("lualine-setting")

require('everforest').setup({
    -- transparent_background_level = 2,
    on_highlights = function(hl, palette)
        hl.TelescopeBorder = { fg = "#242424", bg = "#242424" }
        hl.TelescopeNormal = { fg = palette.fg, bg = "#242424" }
        hl.TelescopeTitle = { fg = palette.purple }
        hl.TelescopePromptNormal = { fg = palette.fg, bg = palette.bg1 }
        hl.TelescopePromptBorder = { fg = palette.bg1, bg = palette.bg1 }
    end,
    colours_override = function(palette)
        palette.bg_dim = "#1b1b1b"
        palette.bg0 = "#282828"
        palette.bg1 = "#32302f"
        palette.bg2 = "#32302f"
        palette.bg3 = "#45403d"
        palette.bg4 = "#45403d"
        palette.bg5 = "#5a524c"
    end,
})

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
lualine_settings.options.theme = custom_lualine_theme

require('lualine').setup(lualine_settings)

vim.cmd('hi! LineNr guibg=none ctermbg=none')
vim.cmd("highlight GitSignsAdd guibg=NONE")
vim.cmd("highlight GitSignsChange guibg=NONE")
vim.cmd("highlight GitSignsDelete guibg=NONE")
vim.cmd('highlight SignColumn guibg=NONE')
