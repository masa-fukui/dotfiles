require("telescope").load_extension("git_worktree")
require("telescope").load_extension("lazygit")

-- enable telescope fzf native
pcall(require("telescope").load_extension, "fzf")

require("telescope").setup()
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "[F]ile by [G]rep" })
vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "[F]ind existing [B]uffers" })
vim.keymap.set("n", "<leader>fm", require("telescope.builtin").marks, { desc = "[F]ind [M]arks" })
vim.keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "[Git] [F]iles" })
vim.keymap.set("n", "<leader>gs", require("telescope.builtin").git_status, { desc = "[G]it [S]tatus" })
vim.keymap.set(
	"n",
	"<Leader>gw",
	"<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
	silent,
	{ desc = "[G]it [W]orktree" }
)

vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<Leader>sn", "<CMD>lua require('telescope').extensions.notify.notify()<CR>", silent)
