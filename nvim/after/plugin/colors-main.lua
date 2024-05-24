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

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

local palette = {
    bg1 = "#1b1b1b",
    bg2 = "#242424",
    bg3 = "#202020",
    fg = "#c5c9c5"
}

require('kanagawa').setup({
    commentStyle = { italic = true },
    functionStyle = { bold = false },
    booleans = { bold = false },
    typeStyle = { bold = false },
    keywordStyle = { bold = false, italic = false },
    statementStyle = { bold = false },
    transparent = true,
    overrides = function()
        return {
            Boolean = { bold = false },
            Todo = { bold = false },
            ["@lsp.typemod.function.readonly"] = { bold = false, fg = palette.fg},
            ["@keyword.operator"] = { bold = false },
            TelescopeBorder = { fg = palette.bg3, bg = palette.bg3 },
            TelescopeNormal = { fg = palette.fg, bg = palette.bg3 },
            TelescopeTitle = { fg = "#8ba4b0" },
            TelescopePromptNormal = { fg = palette.fg, bg = palette.bg2 },
            TelescopePromptBorder = { fg = palette.bg2, bg = palette.bg2 },
        }
    end,
    colors = {
        palette = {
            -- change all usages of these colors
            dragonBlack0 = palette.bg3,
            dragonBlack1 = palette.bg1,
            dragonBlack2 = palette.bg1,
            dragonBlack3 = palette.bg1,
            dragonBlack4 = palette.bg1,
            dragonBlack5 = palette.bg1,
            --dragonYellow = palette.fg,
            waveBlue1 = palette.bg2,
            waveBlue2 = "#625E5A",
            oldWhite = palette.fg,
        },
    }
})

require("rose-pine").setup({
    variant = "dawn",
    styles = {
        italic = false,
    },
})
