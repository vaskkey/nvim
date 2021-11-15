call plug#begin('~/.vim/plugged')
  "Fuzzy finder
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  "Colorscheme
  Plug 'morhetz/gruvbox'

  "ember
  Plug 'joukevandermaas/vim-ember-hbs'

  "Treesitter
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

  "Lsp related
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'jose-elias-alvarez/null-ls.nvim'
  Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/nvim-cmp'

  "line blame
  Plug 'f-person/git-blame.nvim'

  "File tree
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'

  "Statusline
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'akinsho/bufferline.nvim'
call plug#end()
