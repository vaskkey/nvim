local TS = require("nvim-treesitter.configs")

TS.setup({
	ensure_installed = { "javascript", "typescript", "vue", "css", "scss", "lua", "ruby" },
	highlight = {
		enable = true,
	},
})
