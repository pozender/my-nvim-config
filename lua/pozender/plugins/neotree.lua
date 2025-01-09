require("neo-tree").setup({
  filesystem={
    filtered_items = {
      visible = false,
      hide_dotfiles = false,
      hide_gitignored = false,
      always_show_by_pattren = {
        ".env",
        ".git",
      },
    },
  }
})
  

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")
