return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  --Fuzzy finder
  use("nvim-lua/popup.nvim")
  use("nvim-lua/plenary.nvim")
  use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } } })
  use({ "windwp/nvim-spectre", requires = { { "nvim-lua/plenary.nvim" } } })

  --Colorscheme
  use("RRethy/nvim-base16")

  --Treesitter
  use("nvim-treesitter/nvim-treesitter", {
    run = ":TSUpdate",
  })

  --Lsp related
  use({
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  })
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use({ "jose-elias-alvarez/null-ls.nvim", requires = { "nvim-lua/plenary.nvim" } })
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("hrsh7th/nvim-cmp")
  use("onsails/lspkind-nvim")
  use("folke/trouble.nvim")

  --Git
  use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })

  --File tree
  use({
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
    tag = "nightly",
  })

  --Statusline
  use({
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
  })
  use({ "akinsho/bufferline.nvim", requires = { "nvim-tree/nvim-web-devicons" } })
end)
