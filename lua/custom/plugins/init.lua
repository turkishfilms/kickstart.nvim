-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'easymotion/vim-easymotion',
	'norcalli/nvim-colorizer.lua',
	'meatballs/notebook.nvim',
	'sharkdp/fd',
	{
		"nvim-neorg/neorg",
		-- build = ":Neorg sync-parsers",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("neorg").setup {
				-- load = {
				-- 	["core.defaults"] = {},
				-- 	["core.concealer"] = {},
				-- 	["core.dirman"] = {
				-- 		config = {
				-- 			workspaces = {
				-- 				notes = "~/notes",
				-- 			},
				-- 			default_workspace = "notes",
				-- 		},
				-- 	},
				-- },
			}

			vim.wo.foldlevel = 99
			vim.wo.conceallevel = 2
		end,
	},
	'BurntSushi/ripgrep',
	'tpope/vim-surround',
	'tpope/vim-dadbod',
	'mechatroner/rainbow_csv',
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {}
	},
}
