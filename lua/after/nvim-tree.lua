vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<cr>", { desc = "Open NvimTreeToggle" })

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		side = "right",
		adaptive_size = true,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = "s", action = "vsplit" },
				{ key = "o", action = "split" },
			},
		},
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "double",
				width = 50,
				height = 48,
				row = 0,
				col = 200,
			},
		},
	},

	actions = {
		open_file = {
			quit_on_open = true,
		},
	},

	renderer = {
		group_empty = true,
	},

	filters = {
		dotfiles = false,
		git_clean = false,
		no_buffer = false,
		custom = { "*" },
		exclude = {},
	},
})
