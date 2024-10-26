local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.completion.spell,
    null_ls.builtins.formatting.prettier,
    require("none-ls.diagnostics.eslint"),
    require("none-ls.code_actions.eslint"),
    require("none-ls.formatting.autopep8"),
    null_ls.builtins.diagnostics.pylint,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
  },
})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
