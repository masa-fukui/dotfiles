require("main.remap")
require("main.packer")

-- Set the color scheme to Rose Pine
vim.cmd("colorscheme everforest")

-- Line number colors
function LineNumberColors()
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#878787', bold=false })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='#bababa', bold=false })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#878787', bold=false })
end

-- Geenral settings
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.cmd('set clipboard=unnamedplus')


-- Editor options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {
    border = "single", -- "shadow" , "none", "rounded"
    -- border = border
    -- width = 100,
  }
)
vim.api.nvim_buf_set_keymap(0, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})

LineNumberColors()
