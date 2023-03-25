vim.opt.termguicolors = true
vim.cmd("colorscheme base16-gruvbox-dark-hard")

vim.opt.updatetime = 50

-- Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Scroll
vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.scrolloff = 12

vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "120"

-- Search
vim.opt.hidden = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.mouse = "a"

vim.opt.completeopt = "menu,menuone,noselect"
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}
vim.cmd('set nohlsearch')

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})
