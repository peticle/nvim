local dashboard = require("alpha.themes.dashboard")

local layout = {}

math.randomseed(os.time())
local main_color = "markdownH" .. math.random(1, 6)

local function button(shortcut, val, command)
    local element = dashboard.button(shortcut, val, command)
    element.opts.cursor = 4
    element.opts.hl = {
        { main_color, 0, 6 },
    }
    element.opts.hl_shortcut = "Keyword"
    return element
end

layout.header = {
    type = "text",
    val = {
        [[                                           ,,          ,,          ]],
        [[                                    mm     db        `7MM          ]],
        [[    ______                          MM                 MM          ]],
        [[   /\_____\    `7MMpdMAo.  .gP"Ya mmMMmm `7MM  ,p6"bo  MM  .gP"Ya  ]],
        [[  _\ \__/_/_     MM   `Wb ,M'   Yb  MM     MM 6M'  OO  MM ,M'   Yb ]],
        [[ /\_\ \_____\    MM    M8 8M""""""  MM     MM 8M       MM 8M"""""" ]],
        [[ \ \ \/ / / /    MM   ,AP YM.    ,  MM     MM YM.    , MM YM.    , ]],
        [[  \ \/ /\/ /     MMbmmd'   `Mbmmd'  `Mbmo.JMML.YMbmd'.JMML.`Mbmmd' ]],
        [[   \/_/\/_/      MM                                                ]],
        [[               .JMML.                                              ]],
    },
    opts = {
        hl = main_color,
        position = "center",
    },
}

layout.menu = {
    type = "group",
    val = {
        button("a", " > New file", ":ene <BAR> startinsert<CR>"),
        button("f", " > Find file", ":Telescope find_files<CR>"),
        button("r", " > Recently opened files", ":Telescope oldfiles<CR>"),
        button("g", "󰊄 > Find text", ":Telescope live_grep<CR>"),
        button("m", "󰂺 > Jump to marks", ":Telescope marks<CR>"),
        button("p", "󰂖 > Plugins", ":Lazy<CR>"),
        button("s", " > Settings", ":e " .. vim.fn["stdpath"]("config") .. "<CR>"),
        button("q", "󰩈 > Exit Neovim", ":qa<CR>"),
    },
    opts = {
        spacing = 1,
    },
}

layout.footer = {
    type = "text",
    val = require("alpha.fortune")(),
    opts = {
        hl = "Keyword",
        position = "center",
    },
}

layout.contact = {
    type = "text",
    val = "Clément Petignat <contact@peticle.ch>",
    opts = {
        hl = "Normal",
        position = "center",
    },
}

layout.date = {
    type = "text",
    val = os.date("󰸘 Today is %A - %d %b %Y"),
    opts = {
        hl = "Normal",
        position = "center",
    },
}

layout.infos = {
    type = "text",
    val = " " .. #require("lazy").plugins() .. " plugins  v"
        .. vim.version().major .. "." .. vim.version().minor .. "."
        .. vim.version().patch,
    opts = {
        hl = "SpecialKey",
        position = "center",
    },
}

require("alpha").setup({
    layout = {
        { type = "padding", val = 4 },
        layout.header,
        { type = "padding", val = 2 },
        layout.date,
        { type = "padding", val = 2 },
        layout.menu,
        layout.footer,
        { type = "padding", val = 1 },
        layout.contact,
        { type = "padding", val = 1 },
        layout.infos,
    }
})
