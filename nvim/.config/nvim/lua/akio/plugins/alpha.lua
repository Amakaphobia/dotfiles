return{
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        --set the header
        dashboard.section.header.val = {
    "                                   ",
    "                                   ",
    "                                   ",
    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
    " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
    "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
    "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
    "                                   ",
"        █▀▄▀█ ██   █  █▀ ▄███▄        ",
"        █ █ █ █ █  █▄█   █▀   ▀       ",
"        █ ▄ █ █▄▄█ █▀▄   ██▄▄         ",
"        █   █ █  █ █  █  █▄   ▄▀      ",
"           █     █   █   ▀███▀        ",
"          ▀     █   ▀                 ",
"       ▄▄▄▄▄   ▀▄  █ ▄█    ▄▄▄▄▀      ",
"      █     ▀▄ █   █ ██ ▀▀▀ █         ",
"    ▄  ▀▀▀▀▄   ██▀▀█ ██     █         ",
"     ▀▄▄▄▄▀    █   █ ▐█    █          ",
"                  █   ▐   ▀           ",
"                 ▀                    ",
" ▄  █ ██   █ ▄▄  █ ▄▄  ▄███▄      ▄   ",
"█   █ █ █  █   █ █   █ █▀   ▀      █  ",
"██▀▀█ █▄▄█ █▀▀▀  █▀▀▀  ██▄▄    ██   █ ",
"█   █ █  █ █     █     █▄   ▄▀ █ █  █ ",
"   █     █  █     █    ▀███▀   █  █ █ ",
"  ▀     █    ▀     ▀           █   ██ ",
"        ▀                             ",
}
        -- set buttons
        dashboard.section.buttons.val = {
            dashboard.button("e", "> New File", "<cmd>ene<CR>"),
            dashboard.button("SPC ar", "> Restore Previous Session", "<cmd>SessionRestore<CR>"),
            dashboard.button("SPC nt", "> Toggle File Explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("SPC sf", "> Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC sg", "> Grep Word", "<cmd>Telescope live_grep<CR>"),
            dashboard.button("q", "> Quit NeoVim", "<cmd>qa<CR>"),
        }

        -- apply config
        alpha.setup(dashboard.opts)

        --disable folding
        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
}
