-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "rebelot/kanagawa.nvim"
  use "folke/tokyonight.nvim"
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use({
      "neanias/everforest-nvim",
      as = "everforest"
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use("Vimjas/vim-python-pep8-indent")
end)

