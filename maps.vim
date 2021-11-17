let mapleader = " "

nnoremap <leader>p <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <leader>g <cmd>Telescope live_grep<CR>

nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>f <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>r :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>h :lua vim.lsp.buf.hover()<CR>

nnoremap <leader>w <cmd>bd<cr>

nnoremap <leader>y "*y<cr>

nnoremap <leader>nt <cmd>NvimTreeToggle<CR>
nnoremap <leader>nr <cmd>NvimTreeRefresh<CR>
nnoremap <leader>nf <cmd>NvimTreeFindFile<CR>


" Autoclose
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Gitsigns
nnoremap <leader>gs <cmd>Gitsigns stage_hunk<CR>
nnoremap <leader>gp <cmd>Gitsigns preview_hunk<CR>
nnoremap <leader>gr <cmd>Gitsigns reset_hunk<CR>
