vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- switch mode
-- Shortcut to exit from normal mode by Esc.
-- Attention: it always try to save file if it is possible,
--            but if it's not - force quit without saving anyway.
-- vim.keymap.set("n", "<Esc>", function()
-- 	-- Workaround to force quit even if error if occurred.
-- 	-- The main goal is to exit with save if it possible,
-- 	-- just exit where wq returns error.
-- 	local status, err = pcall(function()
-- 		vim.cmd("wq")
-- 	end)
-- 	if not status then
-- 		print("Error while exit: " .. err .. ". Exiting anyway without save.")
-- 		vim.cmd("q")
-- 	end
-- end, { desc = "Save and exit", noremap = true, silent = true })

-- use Esc to leave from every mode
keymap.set("", '<Esc>', '<C-c>:q!<CR>', { noremap = true, silent = true })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- splits
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
