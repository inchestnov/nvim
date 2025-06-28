vim.lsp.enable({
  'luals',
  'gopls',
  'rust_analyzer',
  'ts_ls',
})

-- vim.lsp.config('ts_ls', {
--   on_init = function(client)
--     print(client.name .. ' now runs in the background')
--   end,
-- })

vim.diagnostic.config({
  virtual_lines = true,
  -- virtual_text = true,
})

