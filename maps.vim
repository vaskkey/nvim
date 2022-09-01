let mapleader = " "

nnoremap <leader>p <cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_ivy({}))<CR>
nnoremap <leader>g <cmd>lua require'telescope.builtin'.live_grep{}<CR>

nnoremap <leader>gb <cmd>lua require'telescope.builtin'.git_branches{}<CR>
nnoremap <leader>gf <cmd>lua require'telescope.builtin'.git_status{}<CR>
nnoremap <leader>gs <cmd>Gitsigns stage_hunk<CR>
nnoremap <leader>gp <cmd>Gitsigns preview_hunk<CR>
nnoremap <leader>gr <cmd>Gitsigns reset_hunk<CR>
nnoremap <leader>gh <cmd>Gitsigns blame_line<CR>

nnoremap <leader>bf <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <leader>br <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>bh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <leader>bd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <leader>bi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>ba <cmd>lua vim.lsp.buf.code_action()<CR>

nnoremap <leader>td <cmd>TroubleToggle document_diagnostics<CR>
nnoremap <leader>tw <cmd>TroubleToggle workspace_diagnostics<CR>
nnoremap <leader>tr <cmd>TroubleToggle lsp_references<CR>
nnoremap <leader>tq <cmd>TroubleToggle quickfix<CR>

nnoremap <leader>yt <cmd>terminal yarn test:unit % -u<CR>
nnoremap <leader>yj <cmd>terminal yarn test:unit -u<CR>

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

nnoremap <leader>w <cmd>bd<cr>
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <leader>] <cmd>BufferLineCycleNext<CR>
nnoremap <leader>[ <cmd>BufferLineCyclePrev<CR>

nnoremap <Tab> >>
vnoremap <Tab> >gv

nnoremap <S-Tab> <<
vnoremap <S-Tab> <gv
