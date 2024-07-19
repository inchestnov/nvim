return {
	"nvim-telescope/telescope.nvim", branch = "0.1.x",
	dependencies = { 
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				path_display = { "smart" },
			},
		})
		telescope.load_extension("fzf")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Project files (find file in project)" })
		vim.keymap.set("n", "<leader>pr", builtin.oldfiles, { desc = "Project recent files (find recent files in project)" })
		vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Project string (file string in project)" })
		vim.keymap.set("n", "<leader>fs", function() builtin.grep_string({ search = vim.fn.input("Grep > ")}); end, { desc = "Find string (find string in current file)" })
		vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Git files" })
	end,
}
