local conform = require("conform")

conform.setup({
	formatters_by_ft = {
		lua = { "stylua" },
		-- Conform will run multiple formatters sequentially
		python = { "isort", "black" },
		-- Use a sub-list to run only the first available formatter
		javascript = { { "prettierd", "prettier" } },
		html = { { "prettier" } },
	},
   --[[ format_on_save = {]]
		--[[lsp_fallback = false,]]
		--[[async = false,]]
		--[[timeout = 10000,]]
	--[[},]]
})

vim.keymap.set("n", "<leader>mp", function()
	conform.format({
		lsp_fallback = true,
		async = true,
		timeout = 5000,
	})
end, { desc = "format format file on save" })
