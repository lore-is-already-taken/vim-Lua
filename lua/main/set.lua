vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<cr>", { desc = "Save the current File" })
vim.keymap.set("n", "<leader>q", ":q<cr>", { desc = "Exit the current File" })
vim.keymap.set("n", "<leader>e", ":wq<cr>", { desc = "Save and Exit the current File" })
vim.keymap.set("n", "<c-l>", "<c-w>l ", { desc = "Move cursor to right window" })
vim.keymap.set("n", "<c-h>", "<c-w>h ", { desc = "Move cursor to left window" })
vim.keymap.set("n", "<c-k>", "<c-w>k ", { desc = "Move cursor to up window" })
vim.keymap.set("n", "<c-j>", "<c-w>j ", { desc = "Move cursor to down window" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--open Mason
vim.keymap.set("n", "<leader>ms", ":Mason<cr>", { desc = "Open Mason menu" })
--open Lazy
vim.keymap.set("n", "<leader>lz", ":Lazy<cr>", { desc = "Open Lazy menu" })

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.o.clipboard = "unnamedplus"

--vim.opt.colorcolumn = "90"
