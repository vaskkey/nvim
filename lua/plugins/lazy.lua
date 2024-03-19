return {
  { "wbthomason/packer.nvim" },
  --Fuzzy finder
  { "nvim-lua/popup.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "nvim-telescope/telescope.nvim",    dependencies = { { "nvim-lua/plenary.nvim" } } },
  { "windwp/nvim-spectre",              dependencies = { { "nvim-lua/plenary.nvim" } } },
  --Colorscheme
  { "RRethy/nvim-base16" },
  --Treesitter
  { "nvim-treesitter/nvim-treesitter" },

  --Lsp related
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "nvimtools/none-ls.nvim" },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "nvimtools/none-ls.nvim",
    }
  },
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp"
  },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/nvim-cmp" },
  { "onsails/lspkind-nvim" },


  { "folke/trouble.nvim" },

  --Git
  { "lewis6991/gitsigns.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  --File tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "nightly",
  },

  --Statusline
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
  },

  --Harpoon
  {
    "ThePrimeagen/harpoon",
    dependencies = { { "nvim-lua/plenary.nvim" } }
  },

  --Auto Pairs
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  --Editor
  {
    "numToStr/Comment.nvim",
    opts = {}
  },

  -- Copilot
  { "github/copilot.vim" }
}
