local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local null_ls = require("null-ls")

local lua_config = require("config.lua")

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

lspconfig.tailwindcss.setup({})

lspconfig.vuels.setup({
	capabilities = capabilities,
	settings = {
		vetur = {
			validation = {
				style = false,
			},
			completion = {
				tagCasing = "initial",
			},
		},
	},
})

lspconfig.sumneko_lua.setup(lua_config.config)

lspconfig.solargraph.setup({})

configs.emmet_ls = {
	default_config = {
		cmd = { "emmet-ls", "--stdio" },
		filetypes = { "html", "css", "blade", "eruby", "erb" },
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
