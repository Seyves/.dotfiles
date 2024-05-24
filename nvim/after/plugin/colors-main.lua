function ToggleTheme()
    if vim.g.colors_name == 'kanagawa' then
        vim.cmd('!bash ~/.dotfiles/toggletheme.sh Koga-Rosewood light.jpg')
    else
        vim.cmd('!bash ~/.dotfiles/toggletheme.sh BreezeGrayDark dark.webp')
    end
    vim.cmd('so ~/.config/nvim/after/plugin/colors.lua')
    vim.cmd('hi! LineNr guibg=none ctermbg=none')
    return nil
end

require('colorizer').setup()

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

require('everforest').setup({
    -- transparent_background_level = 2,
    colours_override = function(palette)
        palette.bg_dim = "#1b1b1b"
        palette.bg0 = "#282828"
        palette.bg1 = "#32302f"
        palette.bg2 = "#32302f"
        palette.bg3 = "#45403d"
        palette.bg4 = "#45403d"
        palette.bg5 = "#5a524c"
    end,
    on_highlights = function(hl, palette)
        hl.TelescopeBorder = { fg = palette.bg1, bg = palette.bg1 }
        hl.TelescopeNormal = { fg = palette.fg, bg = palette.bg1 }
        hl.TelescopeTitle = { fg = palette.purple }
        hl.TelescopePromptNormal = { fg = palette.fg, bg = palette.bg1 }
        hl.TelescopePromptBorder = { fg = palette.bg1, bg = palette.bg1 }
    end,
})

require("rose-pine").setup({
    variant = "dawn",
    styles = {
        italic = false,
    },
})
