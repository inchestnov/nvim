vim.g.mapleader = " "

vim.keymap.set("n", "-", ":Ex<CR>", { noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<C-Left>",  "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>",    "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>",  "<C-w>l", { silent = true })

-- cooming soon...
