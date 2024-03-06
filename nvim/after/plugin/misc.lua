-- startup screen
require("startup").setup()

-- lazygit
require("telescope").load_extension("lazygit")

-- lualine
require("lualine").setup()

-- gitsigns
require("gitsigns").setup()

-- git worktree
require("git-worktree").setup()
require("telescope").load_extension("git_worktree")
