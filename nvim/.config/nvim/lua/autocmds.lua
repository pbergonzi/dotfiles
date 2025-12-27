require "nvchad.autocmds"

-- Auto-refresh on focus/buffer changes (fixes git branch indicator)
local autocmd = vim.api.nvim_create_autocmd

-- Detect external file changes (like git branch switches)
autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  pattern = "*",
  command = "checktime",
})

-- Notification when file changes externally
autocmd("FileChangedShellPost", {
  pattern = "*",
  callback = function()
    vim.notify("File changed on disk. Buffer reloaded!", vim.log.levels.WARN)
  end,
})
