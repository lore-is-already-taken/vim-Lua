-- Install packer
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

local is_bootstrap = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	is_bootstrap = true
	vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
end

require("packer").startup(function(use)
	use({ -- Package manager
		"wbthomason/packer.nvim",
	})

	use({ --undo tree
		"mbbill/undotree",
	})

	use({
		"lukas-reineke/lsp-format.nvim",
	})

	use({ -- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
	})

	use({
		"nvim-lualine/lualine.nvim",
	})

	use({ --EasyMotion
		"easymotion/vim-easymotion",
	})

	use({ --colorscheme
		"rose-pine/neovim",
	})

	use({
		"catppuccin/nvim",
	})

	use({
		"airblade/vim-rooter",
	})

	use({ -- autopair completion
		"jiangmiao/auto-pairs",
	})

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		requires = {
			{
				"nvim-lua/plenary.nvim",
			},
		},
	})

	use({ -- gruvbox colorscheme
		"morhetz/gruvbox",
	})

	use({ -- para los comentarios
		"preservim/nerdcommenter",
	})

	use({ -- Ntree
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})

	use({ -- Theme inspired by Atom
		"navarasu/onedark.nvim",
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"williamboman/mason.nvim", -- Optional
		build = function()
			pcall(vim.cmd, "MasonUpdate")
		end,
		opts = {
			ensure_installed = {
				"ruff",
				"mypy",
				"black",
			},
		},
	})
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		requires = {
			-- LSP Support

			{
				"neovim/nvim-lspconfig", -- Required
			},

			{
				"williamboman/mason-lspconfig.nvim", -- Optional
			},

			-- Autocompletion
			use({ "hrsh7th/nvim-cmp" }), -- Required
			use({ "hrsh7th/cmp-nvim-lsp" }), -- Required
			use({ "L3MON4D3/LuaSnip" }), -- Required
		},
	})

	use({
		"jose-elias-alvarez/null-ls.nvim",
	})
end)

if is_bootstrap then
	print("==================================")
	print("    Plugins are being installed")
	print("    Wait until Packer completes,")
	print("       then restart nvim")
	print("==================================")
	return
end
