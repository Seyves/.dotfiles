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

require('kanagawa').setup({
    commentStyle = { italic = true },
    functionStyle = { bold = false },
    booleans = { bold = false },
    typeStyle = { bold = false },
    keywordStyle = { bold = false },
    statementStyle = { bold = false },
    transparent = true,
    overrides = function()
        return {
            Boolean = { bold = false },
            Todo = { bold = false },
            ["@lsp.typemod.function.readonly"] = { bold = false },
            ["@keyword.operator"] = { bold = false },
        }
    end,
    colors = {
        palette = {
            -- change all usages of these colors
            dragonBlack0 = "#181819",
            dragonBlack1 = "#1b1b1c",
            dragonBlack2 = "#1b1b1c",
            dragonBlack3 = "#1b1b1c",
            dragonBlack4 = "#1b1b1c",
            dragonBlack5 = "#1b1b1c",
            waveBlue1 = "#242424",
            waveBlue2 = "#625E5A",
        },
    }
})

require("rose-pine").setup({
    variant = "dawn",
    styles = {
        italic = false,
    },
})
