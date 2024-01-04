vim.keymap.set("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>dpr", function()
	require("dap-python").test_method()
end, { noremap = true, silent = true })
