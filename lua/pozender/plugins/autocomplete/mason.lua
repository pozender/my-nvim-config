require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})
require("mason-lspconfig").setup({
  ensure_installed = {
    "clangd",
    "lua_ls",
    "ts_ls",
    "eslint",
    "pyright",
  },
})
