require("main.remap")
require("main.packer")

-- Set the color scheme to Rose Pine
vim.cmd("colorscheme everforest")

-- Geenral settings
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Editor options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
