colors = {
    purple = '#be95ff',
    alt_purple = '#ff7eb6',
    pink = '#ee5396',
    blue = '#78a9ff',
    alt_blue = '#33b1ff',
    cyan = '#08bdba',
    alt_cyan = '#3ddbd9',
    green = '#42be65',
    black = '#161616',
    white = '#fafafa'
}

require('lualine').setup({
    options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        refresh = {
            statusline = 200,
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
