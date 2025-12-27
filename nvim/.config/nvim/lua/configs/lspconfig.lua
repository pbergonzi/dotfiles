require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "tsserver" }
vim.lsp.enable(servers)

-- Pyright for type checking
vim.lsp.config.pyright = {
  settings = {
    pyright = {
      autoImportCompletion = true,
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "off",
      }
    }
  }
}
vim.lsp.enable("pyright")

-- Ruff LSP for linting and organizing imports (better import code actions)
vim.lsp.config.ruff = {
  init_options = {
    settings = {
      organizeImports = true,
      fixAll = true,
    }
  }
}
vim.lsp.enable("ruff")

-- gopls for Go
vim.lsp.config.gopls = {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
      gofumpt = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}
vim.lsp.enable("gopls")

-- read :h vim.lsp.config for changing options of lsp servers 
