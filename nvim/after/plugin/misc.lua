-- startup screen
require("startup").setup()

-- lazygit
require("telescope").load_extension("lazygit")

-- lualine
require("lualine").setup({
	sections = {
		lualine_c = {
			{
				"filename",
				file_status = true, -- displays file status (readonly status, modified status)
				path = 1,
			},
		},
	},
})

-- gitsigns
require("gitsigns").setup()

-- git worktree
require("git-worktree").setup()
require("telescope").load_extension("git_worktree")

-- remaps
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle lazygit" })
vim.keymap.set("n", "<leader>gw", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", silent)

vim.keymap.set("n", "<leader>bd", "<cmd>Bdelete<CR>", { desc = "Close buffer" })


-- rust vim
vim.g.rustfmt_autosave = 1

-- fterm
require("Fterm").setup({
    dimensions = {
        height = 0.8,
        width = 0.8,
    },
})
vim.keymap.set("n", "<leader>tt", "<cmd>lua require('Fterm').toggle()<CR>", { desc = "Toggle Fterm" })
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
