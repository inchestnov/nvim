return {
	"tpope/vim-fugitive",
	config = function() 
		vim.keymap.set("n", "<leader>gits", vim.cmd.Git, { desc = "Git status"})
		vim.keymap.set("n", "<leader>gitb", function() vim.cmd("Git blame"); end, { desc = "Git blame"})
		-- TODO: add mapping for git commit, git commit --amend --no-edit, git push origin $(current_branch), git push --force
	end,
}
