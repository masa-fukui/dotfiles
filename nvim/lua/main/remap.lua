
-- set leader key
vim.g.mapleader = " "

-- file explore on key press: space + pv
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- remap jk to esc
-- vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v", "jk", "<Esc>", { noremap = true, silent = true })


-- nvimtree toggle
vim.keymap.set('n', '<leader>e', vim.cmd.NvimTreeToggle)
vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', {silent = true, noremap = true})
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', {silent = true, noremap = true})
