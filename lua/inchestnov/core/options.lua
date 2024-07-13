-- vim.cmd - command to vim native

-- show tree explorer
vim.cmd("let g:netrw_liststyle = 3")

-- autosave after any change 
vim.cmd("autocmd InsertLeave * :w")
vim.cmd("autocmd TextChanged * silent! write")

local opt = vim.opt

-- show relative numbers (relative on current line)
-- opt.relativenumber = true
-- show line number
opt.number = true

-- tabs & indentation
opt.tabstop = 2       -- 2 spaces for tabs
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- ???
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignorecase when searching
opt.smartcase = false -- mixes case is also ignoring
-- /???
opt.cursorline = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom
