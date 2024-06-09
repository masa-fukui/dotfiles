-- lazygit: remaps
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle lazygit" })

-- bdelete: remaps
vim.keymap.set("n", "<leader>bd", "<cmd>Bdelete<CR>", { desc = "Close buffer" })

-- rust vim: general
vim.g.rustfmt_autosave = 1

-- neoclip: remaps
vim.keymap.set("n", "<leader>fn", "<cmd>Telescope neoclip<CR>", { desc = "neoclip" })

-- Neotree: remaps
vim.keymap.set("n", "<leader>e", '<Cmd>Neotree toggle<CR>')

-- trouble
vim.keymap.set("n", "<leader>xx", function()
	require("trouble").toggle()
end, { desc = "Toggle trouble" })
vim.keymap.set("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "Toggle trouble workspace diagnostics" })
vim.keymap.set("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "Toggle trouble workspace diagnostics" })
vim.keymap.set("n", "<leader>xq", function()
	require("trouble").toggle("quickfix")
end, { desc = "Toggle trouble quickfix" })
vim.keymap.set("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end, { desc = "Toggle trouble loclist" })
vim.keymap.set("n", "<leader>xr", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Toggle trouble lsp_ref" })

-- kanagawa
require("kanagawa").setup({
	theme = "dragon",
})

vim.keymap.set("n", "<C-Left>", "<cmd>TmuxNavigateLeft<CR>", { desc = "TmuxNavigateLeft" })
vim.keymap.set("n", "<C-Right>", "<cmd>TmuxNavigateRight<CR>", { desc = "TmuxNavigateRight" })
vim.keymap.set("n", "<C-Up>", "<cmd>TmuxNavigateUp<CR>", { desc = "TmuxNavigateUp" })
vim.keymap.set("n", "<C-Down>", "<cmd>TmuxNavigateDown<CR>", { desc = "TmuxNavigateDown" })


