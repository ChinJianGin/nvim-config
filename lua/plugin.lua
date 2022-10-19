return require("packer").startup(function()

	use 'wbthomason/packer.nvim'

	-- call plug#begin('~/.local/share/nvim/plugins')
	use 'tomasr/molokai'
	use 'morhetz/gruvbox'

	-- auto complete
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use {
		"williamboman/mason.nvim",
		config = require("mason").setup(),
	}
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
				local saga = require("lspsaga")

				saga.init_lsp_saga({
						-- your configuration
				})
		end,
	})
	use 'ray-x/lsp_signature.nvim'

	-- file explore
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		}
	}
	-- status bar
	use 'majutsushi/tagbar'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- language support
	use {
		'nvim-treesitter/nvim-treesitter',
	}
	use 'rhysd/vim-clang-format'
	use {
		'instant-markdown/vim-instant-markdown',
		ft = {'markdown'},
		config = 'vim.cmd[[yarn install]]'
	}

	-- git
	-- use 'tpope/vim-fugitive'

	-- terminal
	use 'akinsho/nvim-toggleterm.lua'

	-- other
	use 'mhinz/vim-startify'

	use 'svermeulen/vimpeccable'
	use 'euclidianAce/BetterLua.vim'
end)

