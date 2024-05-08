vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]] --format on save
vim.cmd [[
autocmd FileType help setlocal relativenumber number
autocmd FileType help wincmd H
]] --auto help doc

-- vim.cmd [[
--   autocmd FileType cmdline lua require('noice.nvim').setup({
--     views = {
--       cmdline_popup = {
--         position = { x = 0, y = vim.api.nvim_win_get_cursor(0)[1] }
--       }
--     }
--   })
-- ]]
vim.cmd [[	augroup vimrc-incsearch-highlight
		  autocmd!
		  autocmd CmdlineEnter /,\? :set hlsearch
		  autocmd CmdlineLeave /,\? :set nohlsearch
		augroup END
]]
-- vim.cmd [[
-- autocmd BufLeave
-- ]]
