local null_ls = require("null-ls")

vim.keymap.set("n", "<leader>fs", vim.lsp.buf.format, { desc = "Code Formatting :D" })

local formatting = null_ls.builtins.formatting

local sources = {
	formatting.eslint,
	formatting.black,
	formatting.stylua,
	formatting.htmlbeautifier,
}

null_ls.setup({
	sources = sources,
})
