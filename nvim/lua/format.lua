-- theme swticher
local workenv = os.getenv("WORK_ENV")

if workenv == "work" then
	-- vim.cmd("colorscheme catppuccin-mocha")
	vim.cmd("colorscheme kanagawa")
elseif workenv == "linux" then
    vim.cmd("colorscheme rose-pine")
else
	-- vim.cmd("colorscheme gruvbox-material")
    -- vim.cmd("colorscheme rose-pine")
    -- vim.cmd("colorscheme tokyonight-night")
    vim.cmd("colorscheme catppuccin")
end

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

-- set conceallevel = 0 for md files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt_local.conceallevel = 0
	end,
})

-- line number colors
function LineNumberColors()
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#878787", bold = false })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#bababa", bold = false })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#878787", bold = false })
end

LineNumberColors()
