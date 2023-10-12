
-- set leader key
vim.g.mapleader = " "

-- file explore on key press: space + pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- remap jk to esc
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
