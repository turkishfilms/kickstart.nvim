-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'cmdpalette.nvim',
	'tpope/vim-surround',
	'tpope/vim-dadbod',
	'tpope/vim-jdaddy',
	-- 'easymotion/vim-easymotion',--Get this to actually work
	-- 'meatballs/notebook.nvim', --MAGMA WILL BE BETTER
	-- 'sharkdp/fd',
	'BurntSushi/ripgrep',
	'mechatroner/rainbow_csv',

	{
		'norcalli/nvim-colorizer.lua',
		config = function()
			require('colorizer').setup()
		end
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				lsp = {
					-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
					},
				},
				-- you can enable a preset for easier configuration
				presets = {
					bottom_search = false, -- use a classic bottom cmdline for search
					command_palette = true, -- position the cmdline and popupmenu together
					long_message_to_split = true, -- long messages will be sent to a split
					inc_rename = true, -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = false, -- add a border to hover docs and signature help
				},

				cmdline = {
					opts = {
						relative = 'cursor',
						position = { row = 0, col = 0 },
					},
					format = {
						cmdline = { icon = ":" },
						search_down = { icon = "/" },
						search_up = { icon = "\\/" },
						filter = { icon = "" },
						lua = { icon = "" },
						help = { icon = "?" },
					},
				},
				background_colour = '#000000',
				views = {
					inc_rename = {
						border = {
							style = 'none',
							text = { top = 'jk' },
						},
					},
					command_palette = {
						border = {
							style = 'none',
							padding = { x = 0, y = 0 }
						}
					},
					cmdline_popup = {
						border = {
							style = "none",
						},
						filter_options = {},
					},
				},
			})
		end
	},

	-- 	"m4xshen/hardtime.nvim",
	-- 	dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
	-- 	opts = {}
	-- },


	-- {
	-- 	"hachy/cmdpalette.nvim",
	-- 	config = function()
	-- 		require("cmdpalette").setup({
	-- 			win = {
	-- 				height = 0.3,
	-- 				width = 0.8,
	-- 			},
	-- 			sign = {
	-- 				text = ":",
	-- 			},
	-- 			buf = {
	-- 				filetype = "vim",
	-- 				syntax = "vim",
	-- 			},
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"nvim-neorg/neorg",
	-- 	build = ":Neorg sync-parsers",
	-- 	-- tag = "*",
	-- 	dependencies = { "nvim-lua/plenary.nvim", "nvim-neorg/tree-sitter-norg" },
	-- 	config = function()
	-- 		require("neorg").setup {
	-- 			load = {
	-- 				["core.defaults"] = {}, -- Loads default behaviour
	-- 				["core.concealer"] = {}, -- Adds pretty icons to your documents
	-- 				["core.dirman"] = { -- Manages Neorg workspaces
	-- 					config = {
	-- 						workspaces = {
	-- 							notes = "~/notes",
	-- 						},
	-- 					},
	-- 				},
	-- 			},
	-- 		}
	-- 	end,
	-- },
}
