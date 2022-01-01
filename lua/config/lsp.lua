local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local null_ls = require("null-ls")

local lua_config = require("config.lua")

local js_attach = function(client)
	local ts_utils = require("nvim-lsp-ts-utils")

	client.resolved_capabilities.document_formatting = false
	client.resolved_capabilities.document_range_formatting = false

	ts_utils.setup({
		eslint_bin = "eslint_d",
		eslint_enable_diagnostics = true,
		eslint_enable_code_actions = true,
		enable_formatting = true,
		formatter = "prettierd",
	})
	ts_utils.setup_client(client)
end

local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local sources = {
  null_ls.builtins.diagnostics.eslint,
	null_ls.builtins.formatting.eslint,
	null_ls.builtins.formatting.stylua,
}


null_ls.setup({
	sources = sources,
})

lspconfig["tsserver"].setup({
	capabilities = capabilities,
})

lspconfig.vuels.setup({
	capabilities = capabilities,
})

lspconfig.sumneko_lua.setup(lua_config.config)

configs.emmet_ls = {
	default_config = {
		cmd = { "emmet-ls", "--stdio" },
		filetypes = { "html", "css", "blade" },
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
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})
