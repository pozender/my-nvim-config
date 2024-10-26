require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "ast_grep" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
lspconfig.ast_grep.setup({
  capabilities = capabilities,
})
lspconfig.eslint.setup({
  capabilities = capabilities,
})
lspconfig.jedi_language_server.setup({
  capabilities = capabilities,
})
lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = false,
      },
    },
  },
})

lspconfig.tailwindcss.setup({
  capabilities = capabilities,
})
