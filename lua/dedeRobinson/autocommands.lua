vim.cmd [[au BufWritePre *\(.norg\|.txt\)\@<! lua vim.lsp.buf.format()]] --format on save not norg though

vim.cmd [[
autocmd FileType help setlocal relativenumber number
autocmd FileType help wincmd H
]] --auto help doc

-- vim.cmd [[	augroup vimrc-incsearch-highlight
-- 		  autocmd!
-- 		  autocmd CmdlineEnter /,\? :set hlsearch
-- 		  autocmd CmdlineLeave /,\? :set nohlsearch
-- 		augroup END
-- ]]

vim.api.nvim_create_autocmd('Filetype', {
	pattern = 'norg',
	callback = function()
		-- Map <M-p> to clear search highlighting
		vim.api.nvim_set_keymap('n', '<M-p>', ':noh<CR>', { noremap = true, silent = true })

		-- Get the current buffer's filename
		local filename = vim.api.nvim_buf_get_name(0)
		if filename:match('journal') then
		      vim.cmd('set wrapmargin=45')
		end
	end,
})
