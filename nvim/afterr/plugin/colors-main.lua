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
        hl.InfoFloat = { bg = palette.bg0, fg = hl.InfoFloat.fg }
        hl.HintFloat = { bg = palette.bg0, fg = hl.HintFloat.fg }
        hl.ErrorFloat = { bg = palette.bg0, fg = hl.ErrorFloat.fg }
        hl.WarningFloat = { bg = palette.bg0, fg = hl.WarningFloat.fg }
        hl.FloatBorder = { bg = palette.bg0, fg = palette.bg5 }
        hl.NormalFloat = { bg = palette.bg0, fg = palette.fg }
    end,
})

require("rose-pine").setup({
    variant = "dawn",
    styles = {
        italic = false,
    },
})
