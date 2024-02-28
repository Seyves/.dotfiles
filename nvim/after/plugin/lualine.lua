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
