local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    -- ⚡ Python using Ruff (super fast)
    python = {
      "ruff_fix", -- fixes issues including removing unused imports
      "ruff_format", -- formats code
      "ruff_organize_imports", -- sorts imports
    },

    -- Go formatting
    go = { "goimports", "gofumpt" },
  },

  -- Optional: format on save (recommended)
  --  format_on_save = {
  --    timeout_ms = 500,
  --    lsp_fallback = true,
  --  },
}

return options
