vim.lsp.enable({'luals', 'gopls', 'rust_analyzer'})

-- vim.lsp.config('rust_analyzer', {
--   on_init = function(client)
--     print(client.name .. ' now runs in the background')
--   end,
-- })

vim.diagnostic.config({
  virtual_lines = true,
  -- virtual_text = true,
})

