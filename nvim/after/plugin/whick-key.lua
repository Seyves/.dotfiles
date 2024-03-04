local wk = require("which-key")
wk.register({
    ["<leader>"] = {
        s = { name = "[S]earch", },
        o = { name = "[O]pen" },
        a = { name = "[A]pply or [A]dd" },
        q = { name = "[Q]uicklist" },
        g = { name = "[G]it", },
        h = { name = "[H]arpoon", },
    },
    g = { name = "[G]o to", },
})
