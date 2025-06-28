return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true, -- если нет форматтера, попробовать LSP
      },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        go = { "gofmt" },
        sh = { "shfmt" },
      },
    })
  end,
}
