colors = {
    bg = '#19191a',
    fg = '#e1e1e1',
    fo = '#984936'
}

require('lualine').setup({
    options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        refresh = {
            statusline = 200,
        },
        theme = {
            normal = {
                a = { fg = colors.fg, bg = colors.fo, gui = "bold" },
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.bg },
            },
            insert = { a = { fg = colors.fg, bg = colors.fo, gui = "bold" } },
            visual = { a = { fg = colors.fg, bg = colors.fo, gui = "bold" } },
            command = { a = { fg = colors.fg, bg = colors.fo, gui = "bold" } },
            replace = { a = { fg = colors.fg, bg = colors.fo, gui = "bold" } },
            inactive = {
                a = { fg = colors.fg, bg = colors.fo },
                b = { fg = colors.fg, bg = colors.bg },
                c = { fg = colors.fg, bg = colors.bg },
            },
        }
    },
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1,
            }
        }
    }
})
