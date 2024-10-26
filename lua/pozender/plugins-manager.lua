vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  use({ "catppuccin/nvim", as = "catppuccin" })
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  })
  use({
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    -- or                            , branch = '0.1.x',
    requires = { { "nvim-lua/plenary.nvim" } },
  })
  use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "nvimtools/none-ls.nvim",
    "nvimtools/none-ls-extras.nvim",
  })

  use("rafamadriz/friendly-snippets")
  -- Installation
  use({ "L3MON4D3/LuaSnip" })
  use({
    "hrsh7th/nvim-cmp",
    config = function()
      require("cmp").setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },

        sources = {
          { name = "luasnip" },
          -- more sources
        },
      })
    end,
  })
  use({ "saadparwaiz1/cmp_luasnip" })
  use("hrsh7th/cmp-nvim-lsp")
end)
