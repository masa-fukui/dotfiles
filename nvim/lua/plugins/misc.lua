-- lazygit: remaps
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle lazygit" })

-- bdelete: remaps
vim.keymap.set("n", "<leader>bd", "<cmd>Bdelete<CR>", { desc = "Close buffer" })

-- rust vim: general
vim.g.rustfmt_autosave = 1

-- Fterm: remaps
vim.keymap.set("n", "<leader>tt", "<cmd>lua require('Fterm').toggle()<CR>", { desc = "Toggle Fterm" })
vim.keymap.set("n", "<A-i>", '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set("t", "<A-i>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- Nvimtree: remaps
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

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
vim.keymap.set("n", "xr", function()
	require("trouble").toggle("lsp_references")
end, { desc = "Toggle trouble lsp_ref" })
