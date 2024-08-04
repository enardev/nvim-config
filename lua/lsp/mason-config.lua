require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
	ensure_installed = {
		--Lua
		"lua_ls",

		--Python
		"pyright" ,

		-- Go
		"gopls",

		-- Javascript
		"tsserver",
		"eslint",

		-- Bash
		"bashls",

		--Java
		"jdtls",

		--Markdown
		"marksman",

		--HTML
		"html" },
})

require("mason-tool-installer").setup({
	ensure_installed = {
		-- Go
		"gofumpt",
		"goimports",
		"goimports-reviser",
		"golangci-lint",
		"golangci-lint-langserver",
		"golines",
		"gomodifytags",
		--"gospel",
		"gotests",
		"gotestsum",
		"go-debug-adapter"
	},
})

