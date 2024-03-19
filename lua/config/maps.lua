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
nnoremap("<leader>gb", function()
  require("telescope.builtin").git_branches({})
end)
nnoremap("<leader>gf", function()
  require("telescope.builtin").git_status({})
end)

nnoremap("<leader>s", function()
  require("spectre").open_visual()
end)

nnoremap("<leader>gs", "<cmd>Gitsigns stage_hunk<CR>")
nnoremap("<leader>gp", "<cmd>Gitsigns preview_hunk<CR>")
nnoremap("<leader>gr", "<cmd>Gitsigns reset_hunk<CR>")
nnoremap("<leader>gh", "<cmd>Gitsigns blame_line<CR>")
nnoremap("<leader>gn", "<cmd>Gitsigns next_hunk<CR>")
nnoremap("<leader>gN", "<cmd>Gitsigns prev_hunk<CR>")

nnoremap("<leader>td", "<cmd>TroubleToggle document_diagnostics<CR>")
nnoremap("<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<CR>")
nnoremap("<leader>tr", "<cmd>TroubleToggle lsp_references<CR>")
nnoremap("<leader>tq", "<cmd>TroubleToggle quickfix<CR>")

nnoremap("<leader>yt", "<cmd>terminal yarn test % -u<CR>")
nnoremap("<leader>yj", "<cmd>terminal yarn test -u<CR>")

nnoremap("<leader>y", '"*y<cr>')
vnoremap("<leader>y", '"*y<cr>')

nnoremap("<BS>", '"_d')
vnoremap("<BS>", '"_d')

nnoremap("<leader>nt", "<cmd>NvimTreeToggle<CR>")
nnoremap("<leader>nr", "<cmd>NvimTreeRefresh<CR>")
nnoremap("<leader>nf", "<cmd>NvimTreeFindFile<CR>")

nnoremap("<Tab>", ">>")
vnoremap("<Tab>", ">gv")

nnoremap("<S-Tab>", "<<")
vnoremap("<S-Tab>", "<gv")
