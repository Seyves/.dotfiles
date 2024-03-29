local alpha = require("alpha")
local dashboard = require("alpha.themes.theta")

dashboard.config.layout[2].val = {
    [[ ___       ________  ___  ________           ___  _____ ______           ________  ___  ___  _____ ______   _____ ______   ___  ________   ________     ]],
    [[|\  \     |\   __  \|\  \|\   ____\         |\  \|\   _ \  _   \        |\   ____\|\  \|\  \|\   _ \  _   \|\   _ \  _   \|\  \|\   ___  \|\   ____\    ]],
    [[\ \  \    \ \  \|\  \ \  \ \  \___|_        \ \  \ \  \\\__\ \  \       \ \  \___|\ \  \\\  \ \  \\\__\ \  \ \  \\\__\ \  \ \  \ \  \\ \  \ \  \___|    ]],
    [[ \ \  \    \ \  \\\  \ \  \ \_____  \        \ \  \ \  \\|__| \  \       \ \  \    \ \  \\\  \ \  \\|__| \  \ \  \\|__| \  \ \  \ \  \\ \  \ \  \  ___  ]],
    [[  \ \  \____\ \  \\\  \ \  \|____|\  \        \ \  \ \  \    \ \  \       \ \  \____\ \  \\\  \ \  \    \ \  \ \  \    \ \  \ \  \ \  \\ \  \ \  \|\  \ ]],
    [[   \ \_______\ \_______\ \__\____\_\  \        \ \__\ \__\    \ \__\       \ \_______\ \_______\ \__\    \ \__\ \__\    \ \__\ \__\ \__\\ \__\ \_______\]],
    [[    \|_______|\|_______|\|__|\_________\        \|__|\|__|     \|__|        \|_______|\|_______|\|__|     \|__|\|__|     \|__|\|__|\|__| \|__|\|_______|]],
    [[                            \|_________|                                                                                                                ]],
}
dashboard.config.layout[1] = { type = "padding", val = 8 }

alpha.setup(dashboard.config)
