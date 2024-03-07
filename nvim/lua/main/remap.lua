-- Set leader key
vim.g.mapleader = " "

-- File explore on key press: space + pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- remap jk to esc
-- vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "jk", "<Esc>", { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- nvimtree toggle
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { silent = true, noremap = true })

-- Bind Shift+H to :bprev
vim.api.nvim_set_keymap("n", "H", ":bprev<CR>", { noremap = true, silent = true })

-- Bind Shift+L to :bnext
vim.api.nvim_set_keymap("n", "L", ":bnext<CR>", { noremap = true, silent = true })

