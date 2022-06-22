local util = require("lspconfig/util")

NVM = vim.fn.expand("$NVM_BIN"):gsub("/bin", "")

local function get_typescript_server_path()
	local ts_path = util.path.join(NVM, "lib", "node_modules", "typescript", "lib", "tsserverlibrary.js")
	return ts_path
end

local volar_init_options = {
	typescript = {
		serverPath = get_typescript_server_path(),
	},
	languageFeatures = {
		semanticTokens = false,
		references = true,
		definition = true,
		typeDefinition = true,
		callHierarchy = true,
		hover = true,
		rename = true,
		renameFileRefactoring = true,
		signatureHelp = true,
		codeAction = true,
		completion = {
			defaultTagNameCase = "PascalCase",
			defaultAttrNameCase = "kebabCase",
		},
		schemaRequestService = true,
		documentHighlight = true,
		documentLink = true,
		codeLens = true,
		diagnostics = true,
	},
	documentFeatures = {
		documentColor = false,
		selectionRange = true,
		foldingRange = true,
		linkedEditingRange = true,
		documentSymbol = true,
		documentFormatting = {
			defaultPrintWidth = 120,
		},
	},
}

return volar_init_options
