let mapleader = " "

nnoremap <leader>p <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_ivy({}))<CR>
nnoremap <leader>g <cmd>lua require'telescope.builtin'.live_grep{}<CR>

nnoremap <leader>gb <cmd>lua require'telescope.builtin'.git_branches{}<CR>
nnoremap <leader>gf <cmd>lua require'telescope.builtin'.git_status{}<CR>
nnoremap <leader>gs <cmd>Gitsigns stage_hunk<CR>
nnoremap <leader>gp <cmd>Gitsigns preview_hunk<CR>
nnoremap <leader>gr <cmd>Gitsigns reset_hunk<CR>

nnoremap <leader>bf <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>br :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>bh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>bd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>bi <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <leader>w <cmd>bd<cr>

nnoremap <leader>y "*y<cr>
vnoremap <leader>y "*y<cr>

nnoremap <BS> "_d
vnoremap <BS> "_d

nnoremap <leader>nt <cmd>NvimTreeToggle<CR>
nnoremap <leader>nr <cmd>NvimTreeRefresh<CR>
nnoremap <leader>nf <cmd>NvimTreeFindFile<CR>


" Autoclose
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

nnoremap <leader>] :BufferLineCycleNext<CR>
nnoremap <leader>[ :BufferLineCyclePrev<CR>
