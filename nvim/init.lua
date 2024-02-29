require("main.remap")
require("main.packer")

-- set the colorscheme
-- vim.cmd("colorscheme gruvbox")
vim.cmd("colorscheme everforest")
-- vim.cmd("colorscheme gruvbox-material")
-- vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme embark")

-- set lelange, requires termguicolors
-- vim.opt.termguicolors = true
-- vim.cmd("colorscheme melange")

-- Line number colors
function LineNumberColors()
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#878787", bold = false })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#bababa", bold = false })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#878787", bold = false })
end

-- Geenral settings
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.cmd("set clipboard=unnamedplus")

-- Editor options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "single", -- "shadow" , "none", "rounded"
	-- border = border
	-- width = 100,
})
vim.api.nvim_buf_set_keymap(0, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })

-- init plugins
vim.opt.termguicolors = true
-- require("bufferline").setup{}
require("lualine").setup()
require("gitsigns").setup()

require("bufferline").setup({

	options = {
		mode = "tabs",
		numbers = "none",
		offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "center" } },
	},
})
LineNumberColors()
