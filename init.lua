require('core')
require('autocmds')

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim",         cmd = "Neoconf" },
	"folke/neodev.nvim",
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight-night]])
		end,
	},
	{
		"hardyrafael17/norminette42.nvim",
		config = function()
			require("norminette").setup()
		end
	},
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
		build = ":MasonUpdate",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		lazy = false,
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "",
						package_pending = "",
						package_uninstalled = "",
					},
				}
			})
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require "plugins.lspconfig"
		end
	},
	{
		'nvim-lua/plenary.nvim',
		lazy = false,
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'nvim-tree/nvim-web-devicons' },
	{ 'voldikss/vim-floaterm' },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup()
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require('plugins.treesitter')
		end

	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim"
		}
	},
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 'L3MON4D3/LuaSnip' },
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require("nvim-tree").setup()
		end
	},
	{ 'onsails/lspkind.nvim' },
	{ "lukas-reineke/indent-blankline.nvim" },
	{ "tpope/vim-fugitive" },
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugins.gitsigns")
		end
	},
	{
		'jlcrochet/vim-crystal'
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
			'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
			'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
		},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
			-- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
			-- animation = true,
			-- insert_at_start = true,
			-- …etc.
		},
		version = '^1.0.0', -- optional: only update when a new 1.x version is released
	},
	{ 'wakatime/vim-wakatime' },
	{'ojroques/vim-oscyank'}

})
require('mappings')
