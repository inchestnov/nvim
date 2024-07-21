return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v1.x",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" }, -- Required
		{ "williamboman/mason.nvim" }, -- Optional
		{ "williamboman/mason-lspconfig.nvim" }, -- Optional

		-- Autocompletion
		{ "hrsh7th/nvim-cmp" }, -- Required
		{ "hrsh7th/cmp-nvim-lsp" }, -- Required
		{ "hrsh7th/cmp-buffer" }, -- Optional
		{ "hrsh7th/cmp-path" }, -- Optional
		{ "saadparwaiz1/cmp_luasnip" }, -- Optional
		{ "hrsh7th/cmp-nvim-lua" }, -- Optional

		-- Snippets
		{ "L3MON4D3/LuaSnip" }, -- Required
		{ "rafamadriz/friendly-snippets" }, -- Optional
	},
	config = function()
		local lsp = require("lsp-zero")
		lsp.preset("recommended")

		lsp.ensure_installed = {
			"lua_ls",
			"gopls",
			"jdtls",
		}

		-- Fix Undefined global 'vim'
		lsp.configure("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		--  cant understand what it means
		-- 	local cmp = require("cmp")
		-- 	local cmp_select = {behavior = cmp.SelectBehavior.Select}
		-- 	local cmp_mappings = lsp.defaults.cmp_mappings({
		-- 		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		-- 		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		-- 		['<C-y>'] = cmp.mapping.confirm({ select = true }),
		-- 		['<C-Space>'] = cmp.mapping.complete(),
		-- 	})
		--
		-- 	lsp.setup_nvim_cmp({ mapping = cmp_mappings, })
		--
		-- Disable Tab and Shift-Tab for cmp.
		local cmp_mappings = lsp.defaults.cmp_mappings({})
		cmp_mappings["<Tab>"] = nil
		cmp_mappings["<S-Tab>"] = nil

		lsp.setup_nvim_cmp({
			mapping = cmp_mappings,
		})

		lsp.on_attach(function(client, bufnr)
			local opts = { buffer = bufnr, remap = false }

			opts.desc = "Show LSP references"
			vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

			-- cant understand this
			-- opts.desc = "Go to declaration"
			-- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

			opts.desc = "Show definitions"
			vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

			opts.desc = "Show implemetations"
			vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

			opts.desc = "Show type definitions"
			vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

			opts.desc = "See available code actions"
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

			opts.desc = "Smart rename"
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

			opts.desc = "Show line diagnostic"
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

			opts.desc = "Show buffer diagnostic"
			vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

			opts.desc = "Go to previous diagnostic"
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

			opts.desc = "Go to next diagnostic"
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

			opts.desc = "Show document for what is under cursor"
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		end)

		lsp.setup()
	end,
}
