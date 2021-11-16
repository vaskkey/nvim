local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local null_ls = require("null-ls")

local volar = require('config.volar');
local lua_config = require('config.lua')

local js_attach = function(client)
  local ts_utils = require('nvim-lsp-ts-utils')

  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false

  ts_utils.setup({
    eslint_bin = 'eslint_d',
    eslint_enable_diagnostics = true,
    eslint_enable_code_actions = true,
    enable_formatting = true,
    formatter = "prettier"
  })
  ts_utils.setup_client(client)
end


lspconfig['tsserver'].setup {
  capabilities = capabilities,
  on_attach = js_attach
}

null_ls.config({})
lspconfig["null-ls"].setup({})

configs['volar'] = volar.config

lspconfig.volar.setup {}

lspconfig.sumneko_lua.setup(lua_config.config)
