vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2 -- 2 spaces for tab
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- replace tab with spaces
vim.opt.wrap = false -- no wrap

vim.opt.clipboard:append("unnamedplus") -- use system clipboard as default register

vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = false -- do not ignore case when search input contains capital letters

vim.opt.hlsearch = false -- clear highlight after search
vim.opt.incsearch = true -- enable increase search

vim.opt.scrolloff = 8
