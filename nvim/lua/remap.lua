vim.g.mapleader = " "
--utilities
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "[q", ':cp<CR>')
vim.keymap.set("n", "]q", ':cn<CR>')
vim.keymap.set("c", "<C-H>", "<C-W>")

vim.o.guifont = "IosevkaTerm Nerd Font Mono:h13"
vim.g.neovide_background_color = "#ffffff"
vim.g.neovide_scroll_animation_length = 0.2
vim.g.neovide_cursor_trail_size = 0.3

vim.keymap.set("n", "<leader>pv", ":Oil<CR>")
--clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
