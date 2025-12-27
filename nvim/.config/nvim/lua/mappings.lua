require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- vim-tmux-navigator: Override NvChad's default window navigation
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate left (tmux-aware)", silent = true })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate down (tmux-aware)", silent = true })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Navigate up (tmux-aware)", silent = true })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Navigate right (tmux-aware)", silent = true })

-- Terminal mode navigation (for Claude Code and other terminals)
map("t", "<C-h>", "<C-\\><C-n><C-h>", { desc = "Navigate left from terminal", silent = true })
map("t", "<C-j>", "<C-\\><C-n><C-j>", { desc = "Navigate down from terminal", silent = true })
map("t", "<C-k>", "<C-\\><C-n><C-k>", { desc = "Navigate up from terminal", silent = true })
map("t", "<C-l>", "<C-\\><C-n><C-l>", { desc = "Navigate right from terminal", silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- venv-selector
map("n", "<leader>vs", "<cmd>VenvSelect<cr>", { desc = "Select virtualenv" })
map("n", "<leader>vc", "<cmd>VenvSelectCached<cr>", { desc = "Select cached venv" })

-- gitsigns
map("n", "]h", function()
  require("gitsigns").next_hunk()
end, { desc = "Next git hunk" })
map("n", "[h", function()
  require("gitsigns").prev_hunk()
end, { desc = "Previous git hunk" })
map("n", "<leader>hs", function()
  require("gitsigns").stage_hunk()
end, { desc = "Stage hunk" })
map("n", "<leader>hr", function()
  require("gitsigns").reset_hunk()
end, { desc = "Reset hunk" })
map("n", "<leader>hp", function()
  require("gitsigns").preview_hunk()
end, { desc = "Preview hunk" })
map("n", "<leader>hb", function()
  require("gitsigns").blame_line()
end, { desc = "Blame line" })

-- pyright
map("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Go to declaration" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to implementation" })
map("n", "gr", vim.lsp.buf.references, { desc = "LSP References" })
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover documentation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP Rename symbol" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code action" })
map("n", "<leader>fm", function()
  vim.lsp.buf.format { async = true }
end, { desc = "LSP Format buffer" })

-- conform (ruff)
map("n", "<leader>cf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format file with Conform" })

-- trouble
-- map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Trouble toggle diagnostics" })
-- map("n", "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Trouble buffer diagnostics" })
-- map("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>", { desc = "Trouble location list" })
-- map("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble quickfix list" })
