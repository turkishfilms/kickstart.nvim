vim.cmd [[au BufWritePre *\(.norg\|.txt\)\@<! lua vim.lsp.buf.format()]] --format on save  not norg though

vim.cmd [[
autocmd FileType help setlocal relativenumber number
autocmd FileType help wincmd H
]] --auto help doc

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*.norg',
  callback = function()
    os.execute 'git add .'
  end,
})
--
-- vim.api.nvim_create_autocmd('BufWritePost', {
--   pattern = '*.norg',
--   callback = function()
--     vim.fn.system 'git add .'
--     vim.fn.system 'git commit -m "save on exit"'
--     vim.fn.system 'git push'
--   end,
--   group = vim.api.nvim_create_augroup('SaveOnExit', { clear = true }),
-- })
---------------------------------------------
-- vim.cmd [[
--   autocmd FileType cmdline lua require('noice.nvim').setup({
--     views = {
--       cmdline_popup = {
--         position = { x = 0, y = vim.api.nvim_win_get_cursor(0)[1] }
--       }
--     }
--   })
-- ]]
--
-- vim.cmd [[	augroup vimrc-incsearch-highlight
-- 		  autocmd!
-- 		  autocmd CmdlineEnter /,\? :set hlsearch
-- 		  autocmd CmdlineLeave /,\? :set nohlsearch
-- 		augroup END
-- ]]
--
-- vim.cmd [[
-- autocmd BufLeave
-- ]]
vim.api.nvim_create_autocmd("Filetype", {
    pattern = "norg",
    callback = function()
		vim.api.nvim_set_keymap('n', '<M-p>', ':noh<CR>', { noremap = true, silent = true })
    end,
})
