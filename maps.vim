let mapleader = " "

nnoremap <leader>p <cmd>lua require'telescope.builtin'.git_files{}<CR>
nnoremap <leader>f <cmd>Telescope live_grep<cr>

nnoremap <leader>gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi <cmd>lua vim.lsp.buf.implementation()<CR>

nnoremap <leader>w <cmd>bd<cr>

nnoremap <leader>nt <cmd>NvimTreeToggle<CR>
nnoremap <leader>nr <cmd>NvimTreeRefresh<CR>
nnoremap <leader>nf <cmd>NvimTreeFindFile<CR>

autocmd BufWritePre *.js,*.ts,*.vue  lua vim.lsp.buf.formatting()
