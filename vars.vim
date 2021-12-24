set termguicolors
set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

set updatetime=50

"Indentation
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap

"Scroll
set relativenumber
set nu
set scrolloff=12

set signcolumn=yes
set colorcolumn=80

"Search
set nohlsearch
set hidden
set incsearch
set ignorecase
set smartcase

set mouse=a

set completeopt=menu,menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
