require("main.remap")
require("main.packer")

-- theme swticher
local workenv = os.getenv("WORK_ENV")

-- vim.cmd("colorscheme everforest")
-- vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme embark")

if workenv == "work" then
	vim.cmd("colorscheme catppuccin-mocha")
else
	vim.cmd("colorscheme gruvbox-material")
end

-- Line number colors
function LineNumberColors()
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#878787", bold = false })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#bababa", bold = false })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#878787", bold = false })
end

-- Geenral settings
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set clipboard=unnamedplus")

-- Editor options
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes"

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "single", -- "shadow" , "none", "rounded"
})
vim.api.nvim_buf_set_keymap(0, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })

-- terraform indent settings
vim.api.nvim_create_autocmd("FileType", {
	pattern = "terraform",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
	end,
})

-- set conceallevel = 0 for json files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "json",
    callback = function()
        vim.opt_local.conceallevel = 0
    end,
})

LineNumberColors()
