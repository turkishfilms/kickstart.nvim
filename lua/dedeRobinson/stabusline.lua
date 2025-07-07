--tabline
vim.o.showtabline = 2
vim.cmd [[
function! CurrentDateTime()
  return strftime("%Y-%m-%d %H:%M")
endfunction
]]
vim.o.tabline = '%Y %{CurrentDateTime()} %=%{FugitiveHead()} %F'
--stl2
vim.cmd 'set noruler'
vim.opt.laststatus = 0
vim.api.nvim_set_hl(0, 'Statusline', { link = 'EndOfBuffer' })
vim.api.nvim_set_hl(0, 'StatuslineNC', { link = 'EndOfBuffer' })
local str = string.rep('-', vim.api.nvim_win_get_width(0))
vim.o.statusline = str
