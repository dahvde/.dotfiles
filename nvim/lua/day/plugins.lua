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

local plugins = {
	-- Comments
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
	--
	"nvim-tree/nvim-tree.lua",
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opts = true },
	},
	"mhartington/formatter.nvim",
	-- formatter
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {}, -- this is equalent to setup({}) function
	},
	"sbdchd/neoformat",
	-- theme
	"wuelnerdotexe/vim-enfocado",
	-- rust
	"simrat39/rust-tools.nvim",
	"mfussenegger/nvim-dap",
	"rcarriga/nvim-dap-ui",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"folke/lsp-colors.nvim",
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.api.nvim_command, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	-- quality of life
	"Aasim-A/scrollEOF.nvim",
}
local opts = {}

require("lazy").setup(plugins, opts)
