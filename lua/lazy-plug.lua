-- install lazy package
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
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
    		{'neovim/nvim-lspconfig'},             -- Required
    		{'williamboman/mason.nvim'},           -- Optional
    		{'williamboman/mason-lspconfig.nvim'}, -- Optional

    		-- Autocompletion
    		{'hrsh7th/nvim-cmp'},     -- Required
    		{'hrsh7th/cmp-nvim-lsp'}, -- Required
    		{'L3MON4D3/LuaSnip'},     -- Required
		}
	},
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim"
		}
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"Mofiqul/vscode.nvim",
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			multiline = true,
		}
	},
	{'akinsho/toggleterm.nvim', version = "*", config = true},
	{
	  "j-hui/fidget.nvim",
	  tag = "legacy",
	  event = "LspAttach",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"lewis6991/gitsigns.nvim"
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {} -- this is equalent to setup({}) function
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim"
	}
})

