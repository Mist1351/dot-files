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
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "cooperuser/glowbeam.nvim" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},
	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	{ "williamboman/mason.nvim", build = ":MasonUpdate" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "hrsh7th/vim-vsnip" },
	{ "hrsh7th/vim-vsnip-integ" },
	{
		"linrongbin16/lsp-progress.nvim",
		event = { "VimEnter" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lsp-progress").setup()
		end,
	},
	{ "nvim-tree/nvim-web-devicons" },
	{ "joshdick/onedark.vim" },
	{ "windwp/nvim-ts-autotag" },
	{ "terrortylor/nvim-comment" },

	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "windwp/nvim-autopairs" },
	{ "Djancyp/outline" },
	{ "lewis6991/gitsigns.nvim" },
	{ "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"linrongbin16/lsp-progress.nvim",
		},
	},
	{
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},
	{ "folke/which-key.nvim" },
	{ "phaazon/hop.nvim" },
	{ "kylechui/nvim-surround" },
})
