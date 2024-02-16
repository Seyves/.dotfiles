function Color(color)
    vim.cmd("let g:gruvbox_material_enable_italic = 1")
    vim.cmd("let g:gruvbox_material_transparent_background = 1")
    vim.cmd("let g:gruvbox_material_background = 'medium'")
	color = color or "gruvbox-material"
	vim.cmd.colorscheme(color)
    --vim.o.background = "dark"
   -- vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    --vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end


require 'colorizer'.setup {
  '*'; -- Highlight all files, but customize some others.
  css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
  html = { names = false; } -- Disable parsing "names" like Blue or Gray
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

Color()

