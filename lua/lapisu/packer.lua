-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use({ 'rose-pine/neovim', as = 'rose-pine' })

vim.cmd('colorscheme rose-pine')
use ('ThePrimeagen/harpoon')
use 'mbbill/undotree'
use 'tpope/vim-fugitive'
use {
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
}
use{ 'neovim/nvim-lspconfig',
'hrsh7th/cmp-nvim-lsp',
'hrsh7th/cmp-buffer',
'hrsh7th/cmp-path',
'hrsh7th/cmp-cmdline',
'hrsh7th/nvim-cmp',
}
use ('nvim-treesitter/playground')
  end)
