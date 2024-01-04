return {
	"mfussenegger/nvim-dap-python",
	dependencies = {

		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap",
	},
	ft = { "python" },
	config = function(_, opts)
		local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
		require("dap-python").setup(path)
	end,
}
