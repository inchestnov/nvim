vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local buf = args.buf
    local opts = { buffer = buf, silent = true }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    -- vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    -- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  end,
})

