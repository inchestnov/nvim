return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = { enable = true },
			indent = { enable = true },
			sync_install = false,
			auto_install = true,
			ensure_installed = {
				"java",
				"go",
				"sql",
				"json",
				"yaml",
				"html",
				"markdown",
				"markdown_inline",
				"graphql",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"query",
				"vimdoc",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<A-Up>",				
					node_incremental = "<A-Up>",				
					scope_incremental = false,				
					node_decremental = "<A-Down>",				
				},
			},
		})								
	end,
}
