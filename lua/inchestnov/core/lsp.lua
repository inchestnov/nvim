vim.lsp.enable({'luals', 'gopls'})

vim.lsp.config('*', {
  on_init = function(client)
    print(client.name .. ' now runs in the background')
  end,
})

vim.diagnostic.config({
  virtual_lines = true,
  -- virtual_text = true,
})

