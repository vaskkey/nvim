local keymaps = require("config.keymap")
local nnoremap = keymaps.nnoremap
local vnoremap = keymaps.vnoremap
local inoremap = keymaps.inoremap

vim.g.mapleader = " "

nnoremap("<leader>p", function()
  require("telescope.builtin").git_files(require("telescope.themes").get_ivy({}))
end)
nnoremap("<leader>f", function()
  require("telescope.builtin").live_grep({})
end)
nnoremap("<leader>gp", function()
  require("telescope.builtin").git_files(require("telescope.themes").get_ivy({}))
end)
nnoremap("<leader>gb", function()
  require("telescope.builtin").git_branches({})
end)
nnoremap("<leader>gf", function()
  require("telescope.builtin").git_status({})
end)

nnoremap("<leader>gs", "<cmd>Gitsigns stage_hunk<CR>")
nnoremap("<leader>gp", "<cmd>Gitsigns preview_hunk<CR>")
nnoremap("<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
nnoremap("<leader>gh", "<cmd>Gitsigns blame_line<CR>")

nnoremap("<leader>bf", function()
  vim.lsp.buf.format({ async = true })
end)
nnoremap("<leader>br", function()
  vim.lsp.buf.rename()
end)
nnoremap("<leader>bh", function()
  vim.lsp.buf.hover()
end)
nnoremap("<leader>bd", function()
  vim.lsp.buf.definition()
end)
nnoremap("<leader>bi", function()
  vim.lsp.buf.implementation()
end)
nnoremap("<leader>ba", function()
  vim.lsp.buf.code_action()
end)

nnoremap("<leader>td", "<cmd>TroubleToggle document_diagnostics<CR>")
nnoremap("<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<CR>")
nnoremap("<leader>tr", "<cmd>TroubleToggle lsp_references<CR>")
nnoremap("<leader>tq", "<cmd>TroubleToggle quickfix<CR>")

nnoremap("<leader>yt", "<cmd>terminal yarn test:unit % -u<CR>")
nnoremap("<leader>yj", "<cmd>terminal yarn test:unit -u<CR>")

nnoremap("<leader>y", '"*y<cr>')
vnoremap("<leader>y", '"*y<cr>')

nnoremap("<BS>", '"_d')
vnoremap("<BS>", '"_d')

nnoremap("<leader>yj", "<cmd>terminal yarn test:unit -u<CR>")
nnoremap("<leader>nt", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>nr", "<cmd>NvimTreeRefresh<CR>")
nnoremap("<leader>nf", "<cmd>NvimTreeFindFile<CR>")

-- Autoclose
inoremap('"', '""<left>')
inoremap("'", "''<left>")
inoremap("(", "()<left>")
inoremap("[", "[]<left>")
inoremap("{", "{}<left>")

nnoremap("<leader>w", "<cmd>bd<cr>")
nnoremap("<leader>]", "<cmd>BufferLineCycleNext<CR>")
nnoremap("<leader>[", "<cmd>BufferLineCyclePrev<CR>")

nnoremap("<Tab>", ">>")
vnoremap("<Tab>", ">gv")

nnoremap("<S-Tab>", "<<")
vnoremap("<S-Tab>", "<gv")
