local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
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

local sources = {
	null_ls.builtins.diagnostics.eslint_d,
	null_ls.builtins.formatting.eslint_d,
	null_ls.builtins.code_actions.eslint_d,
	null_ls.builtins.formatting.stylua,
}

mason.setup()
mason_lsp.setup({
	ensure_installed = {
		"volar",
		"sumneko_lua",
		"tailwindcss",
		"solargraph",
		"emmet_ls",
		"gopls",
		"rust_analyzer",
		"jsonls",
	},
})

null_ls.setup({
	sources = sources,
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
	init_options = volar_init_options,
})

lspconfig.sumneko_lua.setup(lua_config.config)

lspconfig.solargraph.setup({
	capabilities = capabilities,
})

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
