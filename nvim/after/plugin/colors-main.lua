function ToggleTheme()
    if vim.g.colors_name == 'mellow' then
        vim.cmd('!bash ~/.dotfiles/toggletheme.sh Koga-Rosewood light.jpg')
    else
        vim.cmd('!bash ~/.dotfiles/toggletheme.sh BreezeGrayDark dark.webp')
    end
    vim.cmd('so ~/.config/nvim/after/plugin/colors.lua')
    return nil
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

require("rose-pine").setup({
    variant = "dawn",
    styles = {
        italic = false,
    },
})

require 'colorizer'.setup {
    '*',                      -- Highlight all files, but customize some others.
    css = { rgb_fn = true, }, -- Enable parsing rgb(...) functions in css.
    html = { names = false, } -- Disable parsing "names" like Blue or Gray
}

require("no-clown-fiesta").setup({
    transparent = true, -- Enable this to disable the bg color
    styles = {
        -- You can set any of the style values specified for `:h nvim_set_hl`
        comments = {},
        keywords = {},
        functions = {},
        variables = {},
        type = { bold = false },
        lsp = { underline = true }
    },
})
