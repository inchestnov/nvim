return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
      },
      signcolumn = true,
      numhl      = false,
      linehl     = false,
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      attach_to_untracked = true,
      current_line_blame = false,
      update_debounce = 200,
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        local map = function(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- навигация по изменениям
        map("n", "]c", function()
          if vim.wo.diff then return "]c" end
          vim.schedule(function() gs.next_hunk() end)
          return "<Ignore>"
        end, { expr = true })

        map("n", "[c", function()
          if vim.wo.diff then return "[c" end
          vim.schedule(function() gs.prev_hunk() end)
          return "<Ignore>"
        end, { expr = true })

        map("n", "<leader>hs", gs.stage_hunk, { desc = 'GitSigns [H]unk [S]tage' })
        map("n", "<leader>hr", gs.reset_hunk, { desc = 'GitSigns [H]unk [R]eset' })
        map("n", "<leader>hS", gs.stage_buffer, { desc = 'GitSigns [H]unk [S]tage buffer' })
        map("n", "<leader>hu", gs.undo_stage_hunk, { desc = 'GitSigns [H]unk [U]ndo' })
        map("n", "<leader>hR", gs.reset_buffer, { desc = 'GitSigns [H]unk [R]eset buffer' })
        map("n", "<leader>hp", gs.preview_hunk, { desc = 'GitSigns [H]unk [P]review' })
        map("n", "<leader>hb", function() gs.blame_line{full=true} end, { desc = 'GitSigns [H]unk [B]lame' })
      end
    })
  end
}
