--tabline
vim.o.showtabline = 2
vim.o.tabline = '%Y %=%{FugitiveHead()} %F'
-- vim.o.tabline = '%Y %=%{FugitiveHead()} %t'
--stl2
vim.cmd 'set noruler'
vim.opt.laststatus = 0
vim.api.nvim_set_hl(0, 'Statusline', { link = 'EndOfBuffer' })
vim.api.nvim_set_hl(0, 'StatuslineNC', { link = 'EndOfBuffer' })
local str = string.rep('-', vim.api.nvim_win_get_width(0))
vim.o.statusline = str
