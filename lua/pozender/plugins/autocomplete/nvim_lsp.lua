require("cmp").setup({
  sources = {
    { name = "nvim_lsp" },
  },
})
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- local on_attach = base.on_attach
-- Configuration de lua_ls
lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
lspconfig.ts_ls.setup({ capabilities = capabilities })
lspconfig.eslint.setup({ capabilities = capabilities })

lspconfig.html.setup({ capabilities = capabilities })
lspconfig.tailwindcss.setup({ capabilities = capabilities })
-- Configuration de clangd
lspconfig.clangd.setup({
  capabilities = capabilities,
})

lspconfig.pyright.setup({
  capabilities = capabilities,
  filetype = { "python" },
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
