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

-- nvimtree toggle
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>", { silent = true, noremap = true })

-- Bind Shift+H to :bprev
vim.api.nvim_set_keymap("n", "H", ":bprev<CR>", { noremap = true, silent = true })

-- Bind Shift+L to :bnext
vim.api.nvim_set_keymap("n", "L", ":bnext<CR>", { noremap = true, silent = true })

-- Obsidian
vim.keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
vim.keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
vim.keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
vim.keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })

-- Lazigit
vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle lazygit" })

-- Git worktree
vim.keymap.set("n", "<leader>gw", ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", silent)
