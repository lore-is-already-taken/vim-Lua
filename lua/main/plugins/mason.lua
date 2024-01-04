return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"black",
			"mypy",
			"ruff",
			"isort",
			"stylua",
			"lua-language-server",
			"debugpy",
			"pyright",
			"prettier",
			"prettierd",
		},
	},
	config = true,
}
