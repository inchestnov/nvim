return {
	"christoomey/vim-tmux-navigator", -- tmux & split window navigation
	config = function()
		vim.g.tmux_navigator_no_mappings = 1 -- Disable default key mappings
		-- Rebind the keys to Ctrl + Arrow keys
		vim.api.nvim_set_keymap("n", "<C-Left>", ":TmuxNavigateLeft<CR>", { silent = true })
		vim.api.nvim_set_keymap("n", "<C-Down>", ":TmuxNavigateDown<CR>", { silent = true })
		vim.api.nvim_set_keymap("n", "<C-Up>", ":TmuxNavigateUp<CR>", { silent = true })
		vim.api.nvim_set_keymap("n", "<C-Right>", ":TmuxNavigateRight<CR>", { silent = true })
	end,
}
