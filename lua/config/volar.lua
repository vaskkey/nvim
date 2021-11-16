local util = require('lspconfig/util')

local M = {}

local function get_typescript_server_path(root_dir)
  local ts_path = os.getenv('TSSERVERLIBRARY')
  return ts_path 
end

local bin_name = 'volar-server'

local volar_init_options = {
  typescript = {
    serverPath = '',
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
      defaultTagNameCase = 'PascalCase',
      defaultAttrNameCase = 'camelCase',
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
      defaultPrintWidth = 80,
    },
  },
}

M.config = {
  default_config = {
    cmd = { bin_name, '--stdio' },
    filetypes = { 'vue' },
    root_dir = util.root_pattern 'package.json',
    init_options = volar_init_options,
    on_new_config = function(new_config, new_root_dir)
      if
        new_config.init_options
        and new_config.init_options.typescript
        and new_config.init_options.typescript.serverPath == ''
      then
        new_config.init_options.typescript.serverPath = get_typescript_server_path(new_root_dir)
      end
    end,
  },
}

return M
