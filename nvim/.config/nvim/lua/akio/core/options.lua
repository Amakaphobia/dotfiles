vim.cmd("let g:netrw_liststyle = 3") --Set Fileexplorer Style

local opt = vim.opt --just to be alittle less verbose in here

-- set relative linenumbers
opt.number = true -- shows the absolute number of active line
opt.relativenumber = true -- shows the relative numbers for lines above or below the active line

-- tabs and indentation
opt.tabstop = 4 --4 spaces for tabs
opt.shiftwidth = 4 --4 spaces indent
opt.expandtab = true --replace tabs with spaces
opt.autoindent = true --copy current indent when pressing <CR>

-- linewrap
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignores case when searching
opt.smartcase = true -- if mixed case is included in search the results will be case sensitive

-- cursor line
opt.cursorline = false

--colors
opt.termguicolors = true
opt.background = "dark" --colorschemes that can be light or dark are now set to dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- setting up backspace so it works like you think it does
opt.backspace = "indent,eol,start"

-- window splitting rules
opt.splitright = true
opt.splitbelow = true

--mouse
opt.mouse = ""

--keeps the curser in the middle kinda
opt.scrolloff = 12

--font
vim.g.have_nerd_font = true
