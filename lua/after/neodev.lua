local on_attach = function(_, bufnr)
	vim.bo[bufnr].omnifunc = "v:lua.vim.lsp.omnifunc"
	-- Buffer local mappings.
	-- See `:help vim.lsp.*` for documentation on any of the below functions
	local opts = { buffer = bufnr }
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
	--vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
	vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
	vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
	vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
end

require("neodev").setup()
-- Checking Lua setup LSP
require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	settings = {
		Lua = {
			telemetry = { enable = false },
			workspace = { checkThirdParty = false },
		},
	},
})

-- Python SETUP LSP
require("lspconfig").pyright.setup({
	on_attach = on_attach,
	settings = {
		filetypes = { "python" },
	},
})

require("lspconfig").biome.setup({
	on_attach = on_attach,
	settings = {
		filetypes = {
			"javascript",
			"javascriptreact",
			"json",
			"jsonc",
			"typescript",
			"typescript.tsx",
			"typescriptreact",
		},
	},
})
