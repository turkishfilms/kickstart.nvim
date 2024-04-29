-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'tpope/vim-surround',
	'tpope/vim-dadbod',
	'tpope/vim-jdaddy',
	'tpope/vim-fugitive',
	-- 'easymotion/vim-easymotion',--Get this to actually work
	-- 'sharkdp/fd',
	'BurntSushi/ripgrep',
	'mechatroner/rainbow_csv',
	--for neorg
	'nvim-neotest/nvim-nio',
	'pysan3/pathlib.nvim',
	--for ipynb
	'dccsillag/magma-nvim',
	'meatballs/notebook.nvim', --MAGMA WILL BE BETTER

	--  {		config = function()
	-- 	require("notebook").setup(){
	--  api = require("notebook.api"),
	--  settings = require("notebook.settings"),
	--
	-- function _G.define_cell(extmark)
	--     if extmark == nil then
	--          line = vim.fn.line(".")
	--         extmark, _ = api.current_extmark(line)
	--     end
	--      start_line = extmark[1] + 1
	--      end_line = extmark[3].end_row
	--     pcall(function() vim.fn.MagmaDefineCell(start_line, end_line) end)
	-- end
	--
	-- function _G.define_all_cells()
	--      buffer = vim.api.nvim_get_current_buf()
	--      extmarks = settings.extmarks[buffer]
	--     for id, cell in pairs(extmarks) do
	--          extmark = vim.api.nvim_buf_get_extmark_by_id(
	--             0, settings.plugin_namespace, id, { details = true }
	--         )
	--         if cell.cell_type == "code" then
	--             define_cell(extmark)
	--         end
	--     end
	-- end
	--
	-- vim.api.nvim_create_autocmd(
	--     { "BufRead", },
	--     { pattern = { "*.ipynb" }, command = "MagmaInit" }
	-- )
	-- vim.api.nvim_create_autocmd(
	--      "User",
	--     { pattern = { "MagmaInitPost", "NBPostRender" }, callback = _G.define_all_cells },
	-- 			)
	-- 				-- Whether to insert a blank line at the top of the notebook
	-- 				insert_blank_line = true,
	--
	-- 				-- Whether to display the index number of a cell
	-- 				show_index = true,
	--
	-- 				-- Whether to display the type of a cell
	-- 				show_cell_type = true,
	--
	-- 				-- Style for the virtual text at the top of a cell
	-- 				virtual_text_style = { fg = 'lightblue', italic = true },
	-- 			}
	-- 		end,
	-- 	},
	'nvim-neorg/neorg-lsp',
	{
		'folke/noice.nvim',
		event = 'VeryLazy',
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			'MunifTanjim/nui.nvim',
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			'rcarriga/nvim-notify',
		},
		config = function()
			require('noice').setup {
				lsp = {
					-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
					override = {
						['vim.lsp.util.convert_input_to_markdown_lines'] = true,
						['vim.lsp.util.stylize_markdown'] = true,
						['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
					},
				},
				-- you can enable a preset for easier configuration
				presets = {
					bottom_search = false, -- use a classic bottom cmdline for search
					command_palette = true, -- position the cmdline and popupmenu together
					long_message_to_split = true, -- long messages will be sent to a split
					inc_rename = true,  -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = false, -- add a border to hover docs and signature help
				},

				cmdline = {
					opts = {
						relative = 'cursor',
						position = { row = 1, col = -99999 },
					},
					format = {
						cmdline = { icon = ':' },
						search_down = { icon = '/' },
						search_up = { icon = '/' },
						filter = { icon = '' },
						lua = { icon = '' },
						help = { icon = '?' },
					},
				},
				format = {
					level = {
						icons = {
							error = 'X',
							warn = 'W',
							info = 'I',
						},
					},
				},
				notify = {
					enabled = true,
				},
				messages = {
					enabled = false,
				},
				popupmenu = { kind_icons = false },
				views = {
					inc_rename = {
						border = {
							style = 'none',
						},
					},
					command_palette = {
						border = {
							style = 'none',
							padding = { x = 0, y = 0 },
						},
					},
					cmdline_popup = {
						border = {
							style = 'none',
						},
						filter_options = {},
					},
				},
			}
		end,
	},
	{
		'vhyrro/luarocks.nvim',
		priority = 1000,
		config = true,
	},
	{
		'nvim-neorg/neorg',
		dependencies = { 'luarocks.nvim', 'pathlib.nvim', 'nvim-nio' },
		config = function()
			require('neorg').setup {
				load = {
					['core.defaults'] = {}, -- Loads default behaviour
					['core.concealer'] = {}, -- Adds pretty icons to your documents
					['core.esupports.hop'] = {},
					['core.dirman'] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = '~/notes',
							},
						},
					},
				},
			}
		end,
	},
}
