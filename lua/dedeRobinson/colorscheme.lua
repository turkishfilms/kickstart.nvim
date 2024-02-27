vim.cmd('highlight StatusLine guifg=#c0c0c0 guibg=black')
vim.cmd('highlight StatusLineNC guifg=#303030 guibg=black')
-- vim.cmd('highlight StatusLine guifg=#000000 guibg=#000000')
-- vim.cmd('highlight StatusLineNC guifg=#000000 guibg=#000000')
-- ---------------------------------------------------
--Noice
vim.cmd('highlight NoiceCmdlinePopupBorder guifg=#000000 guibg=clear') --bg is the full border and fg is just a strange line
vim.cmd('highlight NoicePopup guifg=#cccccc guibg=clear')              --help in functions like console.log
vim.cmd('highlight NoiceCmdlinePopup guifg=#cccccc guibg=clear')       --fg is color of cursor in cmdline window, bg is color of background
vim.cmd('highlight NoiceCmdline guifg=#FF00FF guibg=#FFAA00')
vim.cmd('highlight NoiceCmdlinePrompt guifg=#cccccc guibg=clear')      --the deleteion prompt in netrw
vim.cmd('highlight NoiceCmdlineIcon guifg=#c0c0c0')                    --: symbol when cmdline
vim.cmd('highlight DiagnosticSignWarn guifg=#FF0099')                  --/ symbol when searching
vim.cmd('highlight NotifyBackground guibg=#000000 guifg=#FF0099')      --notificatio background

--VIRTUAL TEXT
vim.cmd('highlight DiagnosticVirtualTextHint guibg=clear')  --did you mean? background cleared
vim.cmd('highlight DiagnosticVirtualTextInfo guibg=clear')  --did you mean? background cleared
vim.cmd('highlight DiagnosticVirtualTextError guibg=clear') --did you mean? background cleared
vim.cmd('highlight DiagnosticVirtualTextWarn guibg=clear')  --did you mean? background cleared

-- JS

vim.cmd('highlight @string guifg=#ffbbbb')
vim.cmd('highlight @variable.builtin.javascript guifg=#569CD6')
-- vim.cmd('highlight @lsp.type.parameter guifg=#dd6644')
vim.cmd('highlight @lsp.type.parameter.javascript guifg=#50a0dE')
vim.cmd('highlight @lsp.typemod.member.declaration.javascript guifg=#dcdc8a')
vim.cmd('highlight @lsp.type.class.javascript guifg=#85d1c2')
vim.cmd('highlight @property.javascript guifg=#9CDCFE')
vim.cmd('highlight @method.call.javascript guifg=#dcdcaa')
vim.cmd('highlight @keyword.function.javascript guifg=#569cd6')
vim.cmd('highlight @include.javascript guifg=#D8A8FF)')

-- LUA

vim.cmd('highlight @variable guifg=#aaaadd')
vim.cmd('highlight @lsp.typemod.variable.defaultLibrary guifg=#aaaaff')
vim.cmd('highlight @lsp.type.property guifg=#b0e5e0')
vim.cmd('highlight @constant guifg=#ddaadd')
vim.cmd('highlight @type guifg=#eeddcc')
vim.cmd('highlight @keyword guifg=#d8b3e4')
vim.cmd('highlight @property guifg=#88ccaa')
----------------------------------------------
vim.cmd('highlight Normal guibg=none guifg=white')
vim.cmd('highlight NonText guibg=none guifg=white')
-- vim.cmd('highlight LineNr guifg=grey')
-- vim.cmd('highlight Comment guifg=#8b949e')
-- vim.cmd('highlight PMenu guibg=#333333 guifg=#eeeeee')
-- vim.cmd('highlight String guifg=#df8050')
-- vim.cmd('highlight Statement guifg=#79b8ff')
-- vim.cmd('highlight Identifier guifg=#c8e1ff')   -- idk i thought constants
-- vim.cmd('highlight WinSeparator guifg=#b46695') -- for keywords
-- vim.cmd('highlight WinSeparator guifg=#000000 guibg=#000000')
-- vim.cmd('highlight Function guifg=#fff5b1')
-- vim.cmd('highlight Constant guifg=white')      --was previously number
-- vim.cmd('highlight Number guifg=#85e89d')      --numbers
-- vim.cmd('highlight Conditional guifg=#b46695') --if
-- vim.cmd('highlight Character guifg=#00ffff')   --idk
-- vim.cmd('highlight Character guifg=#4ec9b0')   --class
-- vim.cmd('highlight Conditional guifg=#d2a8ff') --if wau better
-- vim.cmd('highlight Boolean guifg=#2188ff')     --bools
-- vim.cmd('highlight Repeat guifg=#d2a8ff')      --bools
---------------------------------------------------
--NETRW--
vim.cmd('highlight EndOfBuffer guibg=none guifg=#000000')     --aftertext color
vim.cmd('highlight Directory guibg=none guifg=#555555')       --aftertext color
vim.cmd('highlight netrwList guibg=#000000 guifg=#3c5c88')    --netrw sorted by and sequence
vim.cmd('highlight netrwHelpCmd guibg=#000000 guifg=#333333') --netrw help buttons (f1 D R etc)
vim.cmd('highlight netrwPlain guibg=none guifg=#888888')      --netrw file name colors
vim.cmd('highlight CursorLine guibg=none guifg=#ffffff')      --netrw highliight current file
vim.cmd('highlight TabLineFill guibg=none guifg=#888888')     --tabline bg
