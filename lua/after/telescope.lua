local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})

vim.keymap.set("n", "<leader>ps", function()
	builtin.grep_string({ search = vim.fn.input("GREP > ") })
end, { desc = "search for a word in the root folder" })

vim.keymap.set("n", "<leader>ff", builtin.buffers, { desc = "[ ] Find existing buffers" })
