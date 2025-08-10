vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.wrap = false

vim.opt.ignorecase = true
vim.opt.smartcase = false
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8


-- Telescope
vim.pack.add({
    {src="https://github.com/nvim-lua/plenary.nvim"},
    {src="https://github.com/nvim-telescope/telescope-fzf-native.nvim",run='make'},
    {src="https://github.com/nvim-telescope/telescope.nvim"},
})


-- LSP
vim.lsp.enable({'luals', 'gopls'})


-- Theme
vim.pack.add({
    {src="https://github.com/folke/tokyonight.nvim"}
})
vim.cmd("colorscheme tokyonight")
vim.opt.termguicolors = true


