-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Para usar esse find precisa do ripgrep --> sudo apt install ripgrep
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Tema de cores
--[[  use({
	  'ramojus/mellifluous.nvim',
	  -- version = "v0.*", -- uncomment for stable config (some features might be missed if/when v1 comes out)
	  config = function()
		  require'mellifluous'.setup({}) -- optional, see configuration section.
		  vim.cmd('colorscheme mellifluous')
	  end,
  })

  ]]--

  use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})

  use('nvim-treesitter/playground')

  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!

  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  --[[
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          --- Uncomment the two plugins below if you want to manage the language servers from neovim
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          {'neovim/nvim-lspconfig'},
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }
  ]]--


-- Para ter o preview da definicao da funcao
  use {
  'rmagatti/goto-preview',
  config = function()
    require('goto-preview').setup {}
  end
}

use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}








end)
