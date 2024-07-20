-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- general
require("remap")
require("options")

-- plugins
require("plugins.lazy")

require("plugins.telescope")
require("plugins.bufferline")
require("plugins.noice")
require("plugins.null-ls")
-- require("plugins.obsidian")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.harpoon")
require("plugins.misc")
require("plugins.lualine")
require("plugins.rose-pine")
-- require("plugins.toggleterm")

-- load format options
require("format")
