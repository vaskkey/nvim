local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local mason_null = require("mason-null-ls")
local null_ls = require("null-ls")

local lua_config = require("config.lua")

local volar_init_options = require("config.volar")

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

mason.setup()
mason_lsp.setup({
  ensure_installed = {
    "tsserver",
    "volar",
    "lua_ls",
    "tailwindcss",
    "ruby_ls",
    "emmet_ls",
    "gopls",
    "rust_analyzer",
    "jsonls",
    "clangd",
    "svelte",
    "zls"
  },
})
mason_null.setup({
  ensure_installed = {
    "eslint_d",
    "prettierd",
    "stylua",
    "clang_format",
  },
  handlers = {}
})
null_ls.setup({})

lspconfig.tsserver.setup({
  capabilities = capabilities,
})

lspconfig.svelte.setup({
  capabilities = capabilities,
})

lspconfig.zls.setup({
  capabilities = capabilities,
})

lspconfig.clangd.setup({
  capabilities = capabilities,
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
})

lspconfig.tailwindcss.setup({
  capabilities = capabilities,
})
lspconfig.jsonls.setup({
  capabilities = capabilities,
})

lspconfig.volar.setup({
  capabilities = capabilities,
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
  root_dir = lspconfig.util.root_pattern('vite.config.js'),
  init_options = volar_init_options,
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end
})

lspconfig.lua_ls.setup(lua_config.config)

lspconfig.solargraph.setup({
  capabilities = capabilities,
})

configs.emmet_ls = {
  default_config = {
    cmd = { "emmet-ls", "--stdio" },
    filetypes = { "html", "css", "blade", "eruby", "erb", "gotmpl" },
    root_dir = function()
      return vim.loop.cwd()
    end,
    settings = {},
  },
}

lspconfig.emmet_ls.setup({ capabilities = capabilities })

lspconfig.gopls.setup({
  capabilities = capabilities,
  cmd = { "gopls", "serve" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>bf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
